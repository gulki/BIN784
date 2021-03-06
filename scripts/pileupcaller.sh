#!/bin/bash
#Preparing a genotype dataset from low coverage sequencing data 
#Use pileupcaller (https://github.com/stschiff/sequenceTools) and SAMtools (http://samtools.sourceforge.net)
#Usage: sh ./pileupcaller.sh bamlist /path/to/ref /path/to/bedfile /path/to/eigenstrat Sample1,Sample2


#Programs
samtools='/type/here/path/to/your/samtools'
pileupcaller='/type/here/path/to/your/pileupcaller'

bamlist=$1
reference=$2
bedfile=$3
eigenstrat=$4
samplenames=$5 #comma-separated list of samplenames

$samtools mpileup -R -B -q30 -Q30 -l ${bedfile} -f ${reference} $(cat ${bamlist} | xargs) > ${bamlist}.pileup.txt

$pileupcaller --sampleNames ${samplenames} -f ${eigenstrat} -e ${bamlist}.out < ${bamlist}.pileup.txt
