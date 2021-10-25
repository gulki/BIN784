import sys
#Change "Yoruba in line 19 if necessary"

filein = open(sys.argv[1], 'r')
filein2 = open(sys.argv[2], 'w')


x=[]
for line in filein:

        fields=line.split()

        x += [fields[0]]

for i in x :
  for j in x:
    for k in x:
      if i!=j and i!=k and j!=k:
       filein2.write("Yoruba" + "\t" + i + "\t" + j + "\t" + k + "\n")
