#to prepare file including the populations to be test with outgroup admixture. 
#python admixf3.py File1 Output Samplename
#File 1 is a file that contains one population name and 1 seperated with tab. The script will generate the combinations of the given populations and add them to the popname to be tested.
#Eurasianpop1 + '\t' + 1

import sys

infile=open(sys.argv[1],'r')
outfile=open(sys.argv[2],'w')
Samplename=sys.argv[3]

L1=[]
for line in infile:
        fields=line.split("\t")

        L1.append(fields[0])

from itertools import combinations
for combo in combinations(L1, 2):
    outfile.write('\t'.join(combo) + '\t' + Samplename + '\n')
