import numpy as np
from aspmc.util import *


class ConstrainedDDNNF(object):
    # assumes that the DDNNF is smooth
    @staticmethod
    def parse_wmc(path, weights, P, first_semiring, second_semiring, transform, mapping_id_val):
        """Performs (two) algebraic model counting over an X/D-constrained circuit that is smooth while parsing it.
        
        Args:
            path (:obj:`string`): The path to the file that contains the circuit.
            weights (:obj:`string`): The weights of the literals. The weight for literal `v` is in `weights[2*(v-1)]`, the one for `-v` is in `weights[2*(v-1)+1]`
            P (:obj:`iterable`): The set of variables that are quantified over the first semiring.
            first_semiring (:obj:`module`): The module of the first semiring.
            second_semiring (:obj:`module`): The module of the second semiring.
            transform (:obj:`string`): The transformation function used to transform a value from the second semiring into a value from the first semiring.
                Will be used as

                        f_transform = eval(transform)
                        transform = lambda x : first_semiring.from_value(f_transform(x))
        Returns:
            (:obj:`object`): The algebraic model count.
        """
        first_shape = (np.shape(weights[0])[0], ) + np.shape(first_semiring.one())
        second_shape = (np.shape(weights[0])[0], ) + np.shape(second_semiring.one())
        
        # per LP
        transform_lp = "lambda w : int(w[0] == w[1])"
        # per UP
        # print("Calcolo UP")
        transform_up =  "lambda w : int(w[0] > 0)"
        
        f_transform = eval(transform)
        f_transform_lp = eval(transform_lp)
        f_transform_up = eval(transform_up)
        
        # print(transform)
        # print(f_transform_lp)
        # print(f_transform_up)
        
        # print(mapping_id_val)
        # variables id to keep symbolically
        keep_symbolic_list = mapping_id_val.keys()
        
        transform = lambda x : first_semiring.from_value(f_transform(x))
        transform_lp = lambda x : first_semiring.from_value(f_transform_lp(x))
        transform_up = lambda x : first_semiring.from_value(f_transform_up(x))
        
        # aggiunto questo
        fp = open(path, "r")
        ddnnf = fp.readlines()[1:]
        fp.close()
        
        # print(ddnnf)
        
        # tolto il with open
        # with open(path) as ddnnf:
        #     _, nr_nodes, nr_edges, nr_leafs = ddnnf.readline().split()
        
        mem = []
        mem_lp = []
        mem_up = []
        mem_types = []
        idx = 0
        # extracted eq
        extracted_eq_lp : str = ""
        extracted_eq_up : str = ""
        eq_lp_list = []
        eq_up_list = []
        
        for line in ddnnf:
            line = line.strip().split()
            # print(f"----------------- Current IDX: {idx}")
            if line[0] == 'L':
                val = weights[to_pos(int(line[1]))]
                # print(f"-- qui -- {int(line[1])}")
                # aggiungo copia
                val_lp = weights[to_pos(int(line[1]))]
                val_up = weights[to_pos(int(line[1]))]
                val_type = abs(int(line[1])) in P
                
                # print(f"({val_lp,val_up})")
                if abs(int(line[1])) in keep_symbolic_list:
                    # print("symbolic")
                    v_to_consider = abs(int(line[1]))
                    if int(line[1]) > 0:
                        to_add = f"v_{v_to_consider}"
                    else:
                        to_add = f"(1-v_{v_to_consider})"
                else:
                    to_add = f"{weights[to_pos(int(line[1]))]}"
                
                # print(extracted_eq_lp)
                # print(extracted_eq_up)
                extracted_eq_lp = f"{to_add}"
                extracted_eq_up = f"{to_add}"
            else:
                if line[0] == 'A':
                    val = None
                    val_lp = None
                    val_up = None
                    val_type = None
                    for child in line[2:]:
                        child = int(child)
                        if mem_types[child] != val_type:
                            if val_type is None:
                                val_type = mem_types[child]
                                if mem_types[child]:
                                    val = np.empty(first_shape, dtype=first_semiring.dtype)
                                    val[:] = first_semiring.one()
                                    val *= mem[child]
                                    
                                    val_lp = np.empty(first_shape, dtype=first_semiring.dtype)
                                    val_lp[:] = first_semiring.one()
                                    val_lp *= mem_lp[child]
                                
                                    val_up = np.empty(first_shape, dtype=first_semiring.dtype)
                                    val_up[:] = first_semiring.one()
                                    val_up *= mem_up[child]
                                    
                                    extracted_eq_lp = f"{eq_lp_list[child]}"
                                    extracted_eq_up = f"{eq_up_list[child]}"
                                    
                                    # print("val lp, extracted eq - 0")
                                    # print(val_lp)
                                    # print(val_up)
                                    # print(extracted_eq_lp)
                                    # print(extracted_eq_up)
                                else:
                                    val = np.empty(second_shape, dtype=second_semiring.dtype)
                                    # print("Pre val")
                                    # print(val)
                                    val[:] = second_semiring.one()
                                    # print("Post val")
                                    # print(val)
                                    val *= mem[child]
                                    
                                    val_lp = np.empty(second_shape, dtype=second_semiring.dtype)
                                    val_lp[:] = second_semiring.one()
                                    val_lp *= mem_lp[child]
                                    
                                    val_up = np.empty(second_shape, dtype=second_semiring.dtype)
                                    val_up[:] = second_semiring.one()
                                    val_up *= mem_up[child]
                                    
                                    # print('qui')
                                    # print(val_lp)
                                    # print(mem_up[child])
                                    # print(val_up)
                                    # print(mem_up[child])
                                    
                                    extracted_eq_lp = f"{eq_lp_list[child]}"
                                    # extracted_eq_lp = extracted_eq_lp + f"*{1}"
                                    extracted_eq_up = f"{eq_up_list[child]}"
                                    # extracted_eq_up = extracted_eq_up + f"*{1}"
                                    
                                    # print("val lp, extracted eq - 1")
                                    # print(val_lp)
                                    # print(val_up)
                                    # print(extracted_eq_lp)
                                    # print(extracted_eq_up)
                            else:
                                if mem_types[child]:
                                    # print("val lp, extracted eq - 2")
                                    
                                    val_type = True
                                    val = np.array([ transform(w) for w in val ], dtype = first_semiring.dtype)
                                    val *= mem[child]
                                    # print("pre val lp")
                                    # print(val_lp)
                                    
                                    v0 = np.array([ transform_lp(w) for w in val_lp ], dtype = first_semiring.dtype)
                                    # val_lp = np.array([ transform_lp(w) for w in val_lp ], dtype = first_semiring.dtype)
                                    # print(f"v0: {v0}")
                                    val_lp = np.copy(v0)
                                    val_lp *= mem_lp[child]
                                    
                                    # print("pre val up")
                                    # print(val_up)
                                    v1 = np.array([ transform_up(w) for w in val_up ], dtype = first_semiring.dtype)
                                    # val_up = np.array([ transform_up(w) for w in val_up ], dtype = first_semiring.dtype)
                                    # print(f"v1: {v1}")
                                    val_up = np.copy(v1)
                                    val_up *= mem_up[child]
                                    
                                    extracted_eq_lp = f"({np.copy(v0)})*({eq_lp_list[child]})"
                                    extracted_eq_up = f"({np.copy(v1)})*({eq_up_list[child]})"
                                    
                                    # print(val_lp)
                                    # print(val_up)
                                    # print(f"v0: {v0}")
                                    # print(f"v1: {v1}")
                                    # print(extracted_eq_lp)
                                    # print(extracted_eq_up)

                                else:
                                    val *= np.array([ transform(w) for w in mem[child] ], dtype = first_semiring.dtype)
                                    val_lp *= np.array([ transform_lp(w) for w in mem_lp[child] ], dtype = first_semiring.dtype)
                                    val_up *= np.array([ transform_up(w) for w in mem_up[child] ], dtype = first_semiring.dtype)
                                    
                                    v_lp = np.array([ transform_lp(w) for w in mem_lp[child] ], dtype = first_semiring.dtype)
                                    v_up = np.array([ transform_up(w) for w in mem_up[child] ], dtype = first_semiring.dtype)
                                    
                                    # print(v_lp)
                                    # print(v_up)
                                    
                                    # if int(v_lp) != 1:
                                    extracted_eq_lp = f"({extracted_eq_lp})*({v_lp})"
                                    # if int(v_up) != 1:
                                    extracted_eq_up = f"({extracted_eq_up})*({v_up})"
                                    
                                    # print("val lp, extracted eq  - 3")
                                    # print(val_lp)
                                    # print(v_lp)
                                    # print(val_up)
                                    # print(v_up)
                                    # print(extracted_eq_lp)
                                    # print(extracted_eq_up)
                        else:
                            val *= mem[child]
                            val_lp *= mem_lp[child]
                            val_up *= mem_up[child]
                            
                            extracted_eq_lp = f"({extracted_eq_lp})*({eq_lp_list[child]})"
                            extracted_eq_up = f"({extracted_eq_up})*({eq_up_list[child]})"
                            
                            # print("val lp, extracted eq - 4")
                            # print(val_lp)
                            # print(val_up)
                            # print(extracted_eq_lp)
                            # print(extracted_eq_up)
                elif line[0] == 'O':
                    val = None
                    val_lp = None
                    val_up = None
                    val_type = None
                    for child in line[3:]:
                        child = int(child)
                        if mem_types[child] != val_type:
                            if val_type is None:
                                val_type = mem_types[child]
                                if mem_types[child]:
                                    val = np.empty(first_shape, dtype=first_semiring.dtype)
                                    val[:] = first_semiring.zero()
                                    val += mem[child]
                                    
                                    val_lp = np.empty(first_shape, dtype=first_semiring.dtype)
                                    val_lp[:] = first_semiring.zero()
                                    val_lp += mem_lp[child]
                                    
                                    val_up = np.empty(first_shape, dtype=first_semiring.dtype)
                                    val_up[:] = first_semiring.zero()
                                    val_up += mem_up[child]
                                    
                                    extracted_eq_lp = f"{eq_lp_list[child]}"
                                    extracted_eq_up = f"{eq_up_list[child]}"
                                    
                                    # print("val lp, extracted eq - 5")
                                    # print(val_lp)
                                    # print(val_up)
                                    # print(extracted_eq_lp)
                                    # print(extracted_eq_up)
                                
                                else:
                                    val = np.empty(second_shape, dtype=second_semiring.dtype)
                                    val[:] = second_semiring.zero()
                                    val += mem[child]
                                    
                                    val_lp = np.empty(second_shape, dtype=second_semiring.dtype)
                                    val_lp[:] = second_semiring.zero()
                                    val_lp += mem_lp[child]
                                    
                                    val_up = np.empty(second_shape, dtype=second_semiring.dtype)
                                    val_up[:] = second_semiring.zero()
                                    val_up += mem_up[child]
                                    
                                    extracted_eq_lp = f"{eq_lp_list[child]}"
                                    extracted_eq_up = f"{eq_up_list[child]}"
                                    
                                    # print("val lp, extracted eq - 6")
                                    # print(val_lp)
                                    # print(val_up)
                                    # print(extracted_eq_lp)
                                    # print(extracted_eq_up)
                            else:
                                if mem_types[child]:
                                    val_type = True
                                    val = np.array([ transform(w) for w in val ], dtype = first_semiring.dtype)
                                    val += mem[child]
                                    
                                    v0 = np.array([ transform_lp(w) for w in val_lp ], dtype = first_semiring.dtype)
                                    # val_lp = np.array([ transform_lp(w) for w in val_lp ], dtype = first_semiring.dtype)
                                    val_lp = np.copy(v0)
                                    val_lp += mem_lp[child]
                                    
                                    v1 = np.array([ transform_up(w) for w in val_up ], dtype = first_semiring.dtype)
                                    val_up = np.copy(v1)
                                    val_up += mem_up[child]
                                    
                                    extracted_eq_lp = f"({np.copy(v0)})+({eq_lp_list[child]})"
                                    extracted_eq_up = f"({np.copy(v1)})+({eq_up_list[child]})"
                                    
                                    # print("val lp, extracted eq - 7")
                                    # print(val_lp)
                                    # print(val_up)
                                    # print(v0)
                                    # print(v1)
                                    # print(extracted_eq_lp)
                                    # print(extracted_eq_up)
                                else:
                                    val += np.array([ transform(w) for w in mem[child] ], dtype = first_semiring.dtype)
                                    val_lp += np.array([ transform_lp(w) for w in mem_lp[child] ], dtype = first_semiring.dtype)
                                    val_up += np.array([ transform_up(w) for w in mem_up[child] ], dtype = first_semiring.dtype)
                                    
                                    v_lp = np.array([ transform_lp(w) for w in mem_lp[child] ], dtype = first_semiring.dtype)
                                    v_up = np.array([ transform_up(w) for w in mem_up[child] ], dtype = first_semiring.dtype)
                                    
                                    if v_lp != np.array([0]):
                                        extracted_eq_lp = f"({extracted_eq_lp})+({v_lp})"
                                    if v_up != np.array([0]):
                                        extracted_eq_up = f"({extracted_eq_up})+({v_up})"
                                    
                                    # print("val lp, extracted eq - 8")
                                    # print(val_lp)
                                    # print(val_up)
                                    # print(extracted_eq_lp)
                                    # print(extracted_eq_up)
                        else:
                            val += mem[child]
                            val_lp += mem_lp[child]
                            val_up += mem_up[child]
                            extracted_eq_lp = f"({extracted_eq_lp})+({eq_lp_list[child]})"
                            extracted_eq_up = f"({extracted_eq_up})+({eq_up_list[child]})"
                        
                            # print("val lp, extracted eq - 9")
                            # print(val_lp)
                            # print(val_up)
                            # print(extracted_eq_lp)
                            # print(extracted_eq_up)
            mem.append(val)
            mem_lp.append(val_lp)
            mem_up.append(val_up)
            mem_types.append(val_type)
            idx += 1
            eq_lp_list.append(extracted_eq_lp)
            eq_up_list.append(extracted_eq_up)

        # print('here')
        # print(mem)
        # return mem[idx - 1]
        # print("Extracted EQ - LP")
        # print(extracted_eq_lp)
        # print("Extracted EQ - UP")
        # print(extracted_eq_up)
        
        # print("eq_lp_list[idx-1]")
        # print(eq_lp_list[idx-1])
        # print("eq_up_list[idx-1]")
        # print(eq_up_list[idx-1])
        
        # print("eq list")
        # for indice, el in enumerate(eq_up_list):
        #     print(f"{indice}: {el}")
        
        # print(mem_lp)
        # print(mem_up)
        # print(eq_lp_list)
        # print(eq_up_list)
        
        # print("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA")
        
        
        if mapping_id_val is None:
            return mem_lp[idx - 1], mem_up[idx - 1], mem[idx - 1]
        else:
            return mem_lp[idx - 1], mem_up[idx - 1], mem[idx - 1], eq_lp_list[idx-1], eq_up_list[idx-1]
            

