# graph graphname {
#     // This attribute applies to the graph itself
#     size="1,1";
#     // The label attribute can be used to change the label of a node
#     a [label="Foo"];
#     // Here, the node shape is changed.
#     b [shape=box];
#     // These edges both have different line properties
#     a -- b -- c [color=blue];
#     b -- d [style=dotted];
#     // [style=invis] hides a node.
# }

filename = "smoothed_nnf.vcg"
outfile = "to_dot.dot"

fp = open(filename)
lines = fp.readlines()
fp.close()

f_out = open(outfile, "w")

for l in lines:
    l = l.replace("\n","")
    print(l)
    if l.startswith("graph"):
        l = l.split(' ')
        f_out.write(f"graph {l[3]}" + "{\n")
    elif l.startswith('node:'):
        l = l.split(' ')
        print(l)
        # 3 -> nome
        # 5 -> label
        # 7 -> shape
        label = ""
        offset = 0
        if not(l[5].startswith("\"") and l[5].endswith("\"")):
            while not label.endswith("\""):
                label += l[5 + offset]
                offset += 1
            offset -= 1
        else:
            label = l[5]
        print(label,offset)
        f_out.write(f"{l[3]} [label={label}, shape={l[7 + offset][:-1]}];\n")
    elif l.startswith('edge:'):
        l = l.split(' ')
        f_out.write(f"{l[3]} -- {l[5]};\n")
        
        # edge: { sourcename: "3" targetname: "2" }
        
    # node: { title: "1" label: "7" shape: box}
f_out.write("}\n")
f_out.close()