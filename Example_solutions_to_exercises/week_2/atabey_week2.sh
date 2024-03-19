# Convert VCF to PLINK format

plink --vcf /DATA/teaching/BIN784_2024/atabey/vf_22_sample/ALL.chr22.shapeit2_integrated_snvindels_v2a_27022019.GRCh38.phased.vcf --make-bed --out chr22

# Convert PLINK to VCF format

plink --bfile chr22 --recode vcf --out 

# Convert PLINK to EIGENSTART format

makefile
genotypename: data.bed
snpname: data.bim
indivname: data.fam
outputformat: EIGENSTRAT
genotypeoutname: data.geno
snpoutname: data.snp
indivoutname: data.ind
outputgroup: YES
familynames: NO
hashcheck: NO
allowdups: YES
poerdercheck: NO

/usr/local/sw/AdmixTools/bin/convertf -p PARFILE


# bedtools intersect
/usr/local/sw/bedtools2/bin/bedtools intersect -a data.bed -b subset.bed > new.bed

# bedtools bedtobam

/usr/local/sw/bedtools2/bin/bedtools bedtobam -i data.bed -g hg19.genome > data.bam

#plink  --> ped and map
#       --> tped and tfam
#       --> bed and bim and fam

/usr/local/sw/plink --file subset --alleleACGT --recode --transpose --out subset

/usr/local/sw/plink --file subset --alleleACGT --make-bed --out subset

/usr/local/sw/plink --file subset --alleleACGT --make-bed --out subset


python makepedind.py subset.ped A

python2 updatepop.py A subsetACGT.ped > XXXX.ped