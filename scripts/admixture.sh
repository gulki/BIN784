#!/bin/bash

filein=$1 #ped/bed/geno
K=$2

#path to version 1.3 in our server: /usr/local/sw/ENTER/bin/admixture 
#Manual for version 1.3: http://dalexander.github.io/admixture/admixture-manual.pdf 

/usr/local/sw/ENTER/bin/admixture ${filein} ${K}

