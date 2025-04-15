X=[23,4,-6,23,-9,21,3,-45,-8]
pos=[]
neg=[]
for i in range (len(X)):
    if(X[i]<0):
        neg.append(X[i])
    else:
        pos.append(X[i])
print(pos)
print(neg)