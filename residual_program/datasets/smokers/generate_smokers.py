import networkx as nx
import argparse
import random

command_parser = argparse.ArgumentParser(
    description="Generate smokers dataset where relations follow the barabasi albert model"
)

command_parser.add_argument(
    "--n",
    help="Number of nodes",
    type=int,
    required=True
)

command_parser.add_argument(
    "--m",
    help="Number of edges to attach from a new node to existing nodes",
    type=int,
    required=True
)

command_parser.add_argument(
    "--seed",
    help="Random seed",
    type=int,
    default=-1
)

command_parser.add_argument(
    "--replicas",
    help="Number of replicas",
    type=int,
    default=1
)

command_parser.add_argument(
    "--folder",
    help="Output folder",
    type=str,
    default=None
)

command_parser.add_argument(
    "--sbatch",
    help="Generates the sbatch files",
    action="store_true"
)

arguments = command_parser.parse_args()

if arguments.seed != -1:
    random.seed(arguments.seed)

program_aspmc_smokers = """

influences(X,Y):- e(X,Y), \+ ninfluences(X,Y).
ninfluences(X,Y):- e(X,Y), \+ influences(X,Y).

smokes(X) :- stress(X).
smokes(X) :- smokes(Y), influences(Y,X).

"""

program_prolog_tabled_smokers = """

:- table influences/2.
:- table ninfluences/2.
:- table smokes/1.
:- table q/0.

:- discontiguous ne/2.
:- discontiguous e/2.
:- discontiguous stress/1.
:- discontiguous nstress/1.

influences(X,Y):- e(X,Y), tnot(ninfluences(X,Y)).
ninfluences(X,Y):- e(X,Y), tnot(influences(X,Y)).

smokes(X) :- stress(X).
smokes(X) :- smokes(Y), influences(Y,X).

"""

preamble_sbatch = """#!/bin/bash
#SBATCH --job-name=__jobname__
#SBATCH --ntasks=1
#SBATCH --mem=3gb
#SBATCH --partition=longrun
#SBATCH --output=__outfile__

echo "Started at: "
date

__command__ 

echo "Ended at: "
date
"""

default_probability_edge : float = 0.1
default_probability_stress : float = 0.2
filenames_tabled : 'list[str]' = []
filenames_aspmc : 'list[str]' = []

for i in range(0, arguments.replicas):
    graph = nx.barabasi_albert_graph(n=arguments.n, m=arguments.m)
    for t in ["tabled", "original"]:
        filename = f"smokers_{t}_n_{arguments.n}_m_{arguments.m}_{i}.pl"

        # open file
        if arguments.folder is None:
            fp = open(filename,"w")
        else:
            fp = open(f"{arguments.folder}/{filename}","w")

        # write number of edges
        fp.write(f"% edges: {len(graph.edges)}\n")
        
        # write common part
        if t == "tabled":
            filenames_tabled.append(filename)
            fp.write(program_prolog_tabled_smokers)
        else:
            filenames_aspmc.append(filename)
            fp.write(program_aspmc_smokers)
        
        # write stress/1 facts
        for idx in range(0, arguments.n):
            fp.write(f"{default_probability_stress}::stress({idx}).\n")


        # write edges/2 facts
        for (v0,v1) in graph.edges:
            fp.write(f"{default_probability_edge}::e({v0},{v1}).\n")

        # write query
        fp.write(f"\nq:- smokes({arguments.n - 1}).\n")
        
        # close
        fp.close()

# generate the sbatch file
# variables to replace:
# - __jobname__: name of the job
# - __outfile__: output file
# - __command__: command to run
if arguments.sbatch:
    for filename_sbatch in ["sbatch_tabled.sh", "sbatch_original.sh"]:
        # open file
        if arguments.folder is None:
            fp = open(filename_sbatch,"w")
            prefix = "../../"
        else:
            fp = open(f"{arguments.folder}/{filename_sbatch}","w")
            prefix = "../../../"
        
        # setup the command
        command : str = ""
        if filename_sbatch == "sbatch_tabled.sh":
            fnames = filenames_tabled
            jobname = f"tab{arguments.n}"
            outfile = f"tab{arguments.n}.log"
            relevant = "ON"
        else:
            fnames = filenames_aspmc
            jobname = f"orig{arguments.n}"
            outfile = f"orig{arguments.n}.log"
            relevant = "OFF"

        for f in fnames:
            # this creates a file {filename_sbatch}.converted
            command += f"time python {prefix}py_wfs.py {f} q --relevant {relevant} --generate\n"
            command += f"time aspmc -m credal {f}.converted -c -k c2d\n"
                
        # write commands
        current_preamble_sbatch = preamble_sbatch
        current_preamble_sbatch = current_preamble_sbatch.replace("__jobname__", jobname)
        current_preamble_sbatch = current_preamble_sbatch.replace("__outfile__", outfile)
        current_preamble_sbatch = current_preamble_sbatch.replace("__command__", command)

        fp.write(current_preamble_sbatch)

        fp.close()