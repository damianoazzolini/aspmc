
s = "(edge(1,5)*edge(5,6)*edge(4,5)*edge(2,6)*edge(2,5)*edge(1,2) - edge(1,5)*edge(5,6)*edge(2,6)*edge(2,5)*edge(1,2) - edge(1,5)*edge(4,5)*edge(2,6)*edge(2,5)*edge(1,2) + 1) - 0.7"


s = s.replace("edge(1,5)","0.05")
s = s.replace("edge(5,6)","0.05")
s = s.replace("edge(4,5)","0.05")
s = s.replace("edge(2,6)","0.05")
s = s.replace("edge(2,5)","0.05")
s = s.replace("edge(1,2)","0.05")

print(eval(s))