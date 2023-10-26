import math
R=6.0
r=1.0
a=8.0

t=0.00
n=12
with open('spiro_op.txt','w') as f:
    while(t<n*math.pi):
        x=((R+r)*math.cos((r/R)*t)-a*math.cos((1+r/R)*t))*0.001+(-118.28555555555555)

        y=((R+r)*math.sin((r/R)*t)-a*math.sin((1+r/R)*t))*0.001+34.0205556
        f.write(str(x)+','+str(y)+'\n')


        t+=0.01

f.close()