# **BIN784 - Bioinformatics for Population Genetics** 



*Teaching material for BIN784 - Bioinformatics for Population Genetics /  @Dept of Bioinformatics @Hacettepe University*

This repository contains course material -files for teaching basic population genetics analysis in BIN784 - 
Bioinformatics for Population Genetics which I teach @Dept of Bioinformatics @Hacettepe University.

### **REFERENCES:**

- Nielsen, Rasmus; Slatkin, Montgomery. An introduction to population genetics : theory and applications, Sunderland, Mass.: Sinauer Associates, c2013

- https://evolutionarygenetics.github.io

- https://cooplab.github.io/popgen-notes/ 


### **SYLLABUS:**

**Week-1**  **Genome, sequencing and sequencing data - studying genetic variation**

**Aim:** Learning about the sequencing data, data formats, programs, softwares, tools to prepare genomic datasets for population genetics analyses

**Hands-on:** Examining the file formats, small edits on eigenstrat and plink files, conversion of file formats to each other using [convertf](https://github.com/DReichLab/AdmixTools/blob/master/convertf/README), becoming familiar with [Plink](https://zzz.bwh.harvard.edu/plink/index.shtml)

**Week-2** **Allele and genotype frequencies**

**Aim:** Learning about basic population genetics concepts, allele and genotype frequencies, HWE, 

**Hands-on:** Preparing a toy dataset using [pileupCaller](https://github.com/stschiff/sequenceTools), computing allele frequencies and measuring the HWE using [Plink](https://zzz.bwh.harvard.edu/plink/index.shtml) and R

**Reading suggestions:** Nielsen and Slatkin 2013 An Introduction to Population Genetics Chapter 1

**Week-3** **Genetic drift, mutation and studying the shared evolutionary history of populations**

**Aim:** Understanding genetic drift. Studying the relationships (allele frequency correlations) between populations: Introduction to F-statistics.

**Hands-on:** Becoming familiar with the AdmixTools, running F-statistics

**Reading suggestions:** Nielsen and Slatkin, 2013, Chapter 2; Peter B, 2016, doi:10.1534/genetics.115.183913
, Patterson et al, 2012 doi: 10.1534/genetics.112.145037; https://github.com/bodkan/admixr

**Week-4**  **Discovery analyses - Principal Component Analysis (PCA)**

**Aim:** Understanding the PCA, understanding what can PCA tell us in population genetics, running a simple PCA

**Hands-on:** Running _smartpca_ tool of AdmixTools for PCA and plotting the results in R.

**Reading suggestions:** Patterson N, Price A, Reich D (2006) Population Structure and Eigen Analysis doi: https://doi.org/10.1371/journal.pgen.0020190

**Week-5**  **Discovery analyses - ADMIXTURE **

**Aim:** Learning how to run an ADMIXTURE analysis, running a simple analysis, introduction to Pong and Clumpp

**Hands-on:** Running ADMIXTURE software and plotting the results in R

**Week-6**  **Genotype likelihoods based analyses - ANGSD**

**Aim:**  Introduction to ANGSD, becoming familiar with probabilistic methods for dataset preparation

**Hands-on:** Running ANGSD on low coverage data

_Week-7  Midterm-1_

**Week-8**  **Admixture Modelling: qpAdm**

**Aim:**  Understanding admixture modelling, learning how to run qpAdm analysis

**Hands-on:** Running qpAdm on an example dataset

**Week-9**  **Admixture graph fitting: qpGraph**

Week-10  Measuring diversity: LD and ROH

Week-11 Forward-time genetic simulations: SLiM

Week-12 Student presentations
