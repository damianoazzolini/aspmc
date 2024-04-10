# # c1 = 0.2
# # c2 = 0.5

# # k0 = c1 - 0.1
# # k1 = 0.3 - c1
# # k2 = (1-c1)*c2 - 0.2
# # k3 = 0.4 - (1-c1)*c2
# # k4 = (1-c1)*(1-c2) - 0.4
# # k5 = 0.6 - (1-c1)*(1-c2)

# # l = [k0,k1,k2,k3,k4,k5]
# # print(l)

# # print(all([x >= 0 for x in l]))

# # import matplotlib.pyplot as plt

# # a = 0.4
# # b = 0.9
# # f = a - b*(a - 1)

# # # x = [n/1000 for n in range(300,400)]
# # # y = [n/1000 for n in range(400,900)]
# # # z = []
# # # for vx, vy in zip(x,y):
# # #     v = vx - vy*(1-vx)
# # #     z.append(v)
# # # print(z)

# va0 = 0.4 # 0.4
# vb0 = 0.2981 # 0.4
# va1 = 0.3 # 0.3
# vb1 = 0.3 # 0.3


# k = va0 - 0.1
# print(k > 0)
# k = 0.3 - va0
# print(k)
# print(k > 0)
# k = vb0 * (1-va0) - 0.2
# print(k)
# print(k > 0)
# k = 0.4 - vb0 * (1-va0)
# print(k > 0)
# k = (1 - va0) * (1-vb0) - 0.4
# print(k > 0)
# k = 0.6 - (1-va0) * (1-vb0)
# print(k > 0)
# k = va1 - 0.1
# print(k > 0)
# k = 0.3 - va1
# print(k > 0)
# k = vb1 * (1-va1) - 0.2
# print(k > 0)
# k = 0.4 - vb1 * (1-va1)
# print(k > 0)
# k = (1 - va1) * (1-vb1) - 0.4
# print(k > 0)
# k = 0.6 - (1-va1) * (1-vb1)
# print(k > 0)

# r = -1.0*va0*(va1 - 1) + 1.0*va1
# print(r)

a = [1]
exp = [	1, 1, 2, 5, 14, 42, 132, 429, 1430, 4862, 16796, 58786, 208012, 742900]
rec = [1,1]

for n in range(2,20):
    # v = int(2*(2*n-1)*a[(n-1)]/(n+1))
    # a.append(v)
    kr = int(rec[n-1]*(4*(n)-6) / (n))
    rec.append(kr)

print(a)
print(exp)
print(rec[1:])