import networkx as nx
import argparse
import random

command_parser = argparse.ArgumentParser(
    description="Generate reachability graphs where relations follow a grid model"
)

command_parser.add_argument(
    "--n",
    help="Number of nodes",
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

# print(G.edges)

program_aspmc = """

edge(X,Y):- e(X,Y), \+ nedge(X,Y).
nedge(X,Y):- e(X,Y), \+ edge(X,Y).

path(X,Y) :- edge(X,Y).
path(X,Z) :- edge(X,Y), path(Y,Z).

"""

program_prolog_tabled = """

:- table edge/2.
:- table e/2.
:- table nedge/2.
:- table path/2.
:- table q/0.

:- discontiguous ne/2.
:- discontiguous e/2.

edge(X,Y):- e(X,Y), tnot(nedge(X,Y)).
nedge(X,Y):- e(X,Y), tnot(edge(X,Y)).

path(X,Y) :- edge(X,Y).
path(X,Z) :- edge(X,Y), path(Y,Z).

"""

preamble_sbatch = """#!/bin/bash
#SBATCH --job-name=__jobname__
#SBATCH --ntasks=1
#SBATCH --mem=32gb
#SBATCH --partition=longrun
#SBATCH --output=__outfile__

echo "Started at: "
date

__command__ 

echo "Ended at: "
date
"""

default_probability : float = 0.1
filenames_tabled : 'list[str]' = []
filenames_aspmc : 'list[str]' = []

for i in range(0, arguments.replicas):
    graph = nx.grid_2d_graph(arguments.n,arguments.n)

    nodes : 'list[str]' = []
    for idx0 in range(0, arguments.n):
        for idx1 in range(0, arguments.n):
            nodes.append(f"n{idx0}{idx1}")
    nodes.sort()
    query_node = random.choice(nodes)

    for t in ["tabled", "original"]:
        filename = f"reach_grid_{t}_n_{arguments.n}_{i}.pl"

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
            fp.write(program_prolog_tabled)
        else:
            filenames_aspmc.append(filename)
            fp.write(program_aspmc)
        
        # write edges
        fp.write(f"% edges: {len(graph.edges)}\n")
        for el in graph.edges:
            fp.write(f"{default_probability}::e(n{el[0][0]}{el[0][1]},n{el[1][0]}{el[1][1]}).\n")


        # write query
        fp.write(f"\nq:- path(0,{query_node}).\n")
        
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
            command += f"time python3 {prefix}py_wfs.py {f} q --relevant {relevant} --generate\n"
            command += f"time aspmc -m credal {f}.converted -c -k c2d\n"

        
        # write commands
        current_preamble_sbatch = preamble_sbatch
        current_preamble_sbatch = current_preamble_sbatch.replace("__jobname__", jobname)
        current_preamble_sbatch = current_preamble_sbatch.replace("__outfile__", outfile)
        current_preamble_sbatch = current_preamble_sbatch.replace("__command__", command)

        fp.write(current_preamble_sbatch)

        fp.close()