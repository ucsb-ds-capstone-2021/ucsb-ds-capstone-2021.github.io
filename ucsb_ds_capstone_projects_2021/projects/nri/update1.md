# NRI - Update 1
January 31, 2020


Helen Huang, Shivam Misra, Priya Padmanabhan, Surya Pugal,  Yixiao Yue 


## Description of The Project

The project seeks to examine a variant of Alzheimer's disease passed genetically and determine how far back the mutation/mutations responsible for said disorder trace back -- identifying the timeframe when this occurred can provide us key insights into whether or not the mutation was the result of potential selective advantage.


## Background

Listed below are the terminology and biology concepts that are fundamental to our project.

**Inheritance of Genetic Variation**
* Identical by descent (IBD) - IBD length is correlated with historical relationship
* Identical by state (IBS)

**Haplotype**
* Combination of alleles at different markers along the same chromosome that are inherited together
* Haplotype decay over time because of recombination

**Linkage Equilibrium (LE) vs. Linkage Disequilibrium (LD)**
* Linkage Equilibrium (LE) - Independent assortment, Recombination occurs
* Linkage Disequilibrium (LD) - Coinheritance, Non-randomly inherited
* Measures
  * (LE) 0 <-- D' (Recombination) --> 1 (LD)
  * (LE) 0 <-- r^2 (Correlation) --> 1 (LD)

**Illumina NGS Workflow**
* Library presentation
* Cluster generation
* Sequencing
* Data analysis

**Data Generation Process**
* DNA
* FASTQ - Contains all the information (the reads from all DNA fragments)
* SAM (Sequence Alignment Mapping) - Align the results to the reference genome
* VCF (Variant Call Format) - Get rid of all the identical parts and keep the variants info only

**Global IBD**
* Coefficient of Relatedness
  * For a pair of individuals separated by m meiosis, the average portion of the genome shared identical by descent (IBD) owing to that shared ancestry is 2^(-m)
* Portion IBD
  * Parent-Offspring (OP): 1st degree, 50%
  * Full siblings: 1st degree, 50%
  * Half siblings: 2nd degree, 25%
  * Avuncular: 2nd degree, 25%
  * Cousins: 3rd degree, 12.5%

**Local IBD**
* IBD0: shared 0 allele
* IBD1: shared 1 allele
* IBD2: shared 2 alleles
* The length of the shared IBD segments is approximately exponentially distributed with a mean of 100 m^(-1) cM

**Trio Phasing (Haplotype)**
* Problem - We do not have genomes from both parents of every individual of interest
* Solutions
  - Option 1: Add more relatives into the phasing algorithm
  - Option 2: Use known haplotypes from human populations and change your approach to a supervised method

## Data Files

**Human Readable Bigger Size**
* .map
* .ped

**Given Files**
* .bed
  * Contains binary version of the Single Nucleotide Polymorphism (SNP) information of the .ped file
  * Not human readable

* .fam
  * Human readable
  * Contains information from .map
  * FID | IID | PID | MID | Sex | P

* .bim
  * Human readable
  * Contains the first 6 columns of .ped
  * Chr | SNP | GD | BPP | Allele 1 | Allele 2


## Technology (Software)

There are three main softwares that we will be using for the first part of our project. The PLINK and KING program both take in the given files (I416T.bed, I416T.fam, and I416T.bim). KINSHIP2 requires us to build the input file ourselves. King and Plink will allow us to get the relatedness score of the genomes which we will compare with the pedigree (built through KINSHIP2).

1. KING 
https://people.virginia.edu/~wc9c/KING/manual.html

KING is used to explore genotype data, usually from genome-wide studies or sequencing projects, and requires the input files to be in PLINK format.

2. PLINK 
https://www.cog-genomics.org/plink2

PLINK is a command-line tool that is open-source and is essentially a whole-genome association analysis toolset desgined to perform basic, large-scale analyses on genetics.

3. KINSHIP2
https://cran.r-project.org/web/packages/kinship2/index.html

The purpose of KINSHIP2 is to create structures signifying correlations between family relationships (pedigrees). 


## Goals

Due to the Founder effect found in the various families, we can try to figure out background information on the anscestors of the family groups. 

**First goal:**

Our first project goal is to find out how many generations ago the common ancestor was for each family found in the region. One way we can do this is by
looking at the length of DNA segment shared by each of the carriers around each varient. As recombination occurs, we can compare lengths and see the progression of length 
to try to find how long ago the initial generation for the carriers/varient group was. But we run into a problem...

Throughout our dataset, we don't really know for sure which genetic information belongs to which chromosome. One way to is to infer haplotypes - we can infer
haplotypes by comparing common varients of the chromosomes. Then, using these haplotypes, we can see which haplotypes are shared and find out
the earliest shared ancestor by comparing the haplotype through the carriers.

But even then, comparing haplotypes won't be able to tell us the age of the mutation across each varient.

**Second Goal:**

The second goal of the project is the estimate the age of each varient. Inferring haplotypes can only get us so far, and our dataset is missing a lot of 
genetic information. Using the concept of "linkage disequillibrium", which measures the deviation from expected non-association along the genome, we can
fill in genetic information for the dataset. 


## What We are Working On

**Task 1:**

We are given .bed/.fam/.bim data about individuals whom we have pedigree information for. 
We will feed the data into King program to calculate coefficients of relatedness (what percentage of 
genes between a pair of individuals is the same). Based on the percentage, we can tell whether two 
individuals are first degree, second degree, or not related. We will use the kinship2 software which 
takes in a pedigree object and output coefficients of relateness. Comparing the two tables of coefficients,
we can verify the accuracy of the pedigree, which is constructed only from words of participants. 
