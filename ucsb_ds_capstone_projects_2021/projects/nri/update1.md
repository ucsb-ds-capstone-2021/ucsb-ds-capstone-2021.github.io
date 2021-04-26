# NRI - Update 1
January 31, 2020


Helen Huang, Shivam Misra, Priya Padmanabhan, Surya Pugal,  Yixiao Yue 


## Description of The Project

The project seeks to examine a variant of Alzheimer's disease passed genetically and determine how far back the mutation/mutations responsible for said disorder trace back -- identifying the timeframe when this occurred can provide us key insights into whether or not the mutation was the result of potential selective advantage.


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


## Background

Listed below are some definitions and biology concepts that are fundamental to our project. We will be referring to them throughout our updates.

**Alzheimer's Disease**
  * A progressive disease that destroys memory and other important mental functions
  * Common symptoms: dementia, memory loss, confusion, more severely, hallucinations, anxiety, etc.

**Overview of Genetics**
* Nucleotide Sequence
  * 4 types of DNA nucleotides: ATCG
  * Together, with various combination and permutation, they form the DNA sequence
* Gene
  * A sequence of nucleotides in DNA
* Allele
  * One of two or more versions of a gene.
* Mutation
  * A change in the DNA sequence
  * For example:
    * Original sequence: TAACT
    * Mutated sequence: TAACC (Note that the last T is changed to a C)
* Single Nucleotide Polymorphism (SNP)
  * The most common type of genetic variation among people
  * Each SNP represents a substitution of a single nucleotide at a specific position in the gene, which is somehow similar to a mutation. In our project, we will be referring each of these different substitutions as different variants.
* Common Ancestor
  * The most recent individual from which all the individuals of the group are descended
* Coefficient of Relatedness
  * Percentage of genes between a pair of individuals that are the same
* Inheritance of Genetic Variation
  * Identical by state (IBS)
    * Two or more than two individuals share similar nucleotide sequences
  * Identical by descent (IBD)
    * In addition to IBS, if they inherit the similar nucleotide sequences from a common ancestor
    * IBD length is correlated with historical relationship
 

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
   1. Family ID ('FID')
   2. Within-family ID ('IID'; cannot be '0')
   3. Within-family ID of father ('0' if father isn't in dataset)
   4. Within-family ID of mother ('0' if mother isn't in dataset)
   5. Sex code ('1' = male, '2' = female, '0' = unknown)
   6. Phenotype value ('1' = control, '2' = case, '-9'/'0'/non-numeric = missing data if case/control)

* .bim
  * Human readable
  * Contains the first 6 columns of .ped
  * Chr | SNP | GD | BPP | Allele 1 | Allele 2
   1. Chromosome code (either an integer, or 'X'/'Y'/'XY'/'MT'; '0' indicates unknown) or name
   2. Variant identifier
   3. Position in morgans or centimorgans (safe to use dummy value of '0')
   4. Base-pair coordinate (1-based; limited to 231-2)
   5. Allele 1 (corresponding to clear bits in .bed; usually minor)
   6. Allele 2 (corresponding to set bits in .bed; usually major)


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


## What We are Working On

**Task 1:**

We are given .bed/.fam/.bim data about individuals whom we have pedigree information for. 
We will feed the data into King program to calculate coefficients of relatedness (what percentage of 
genes between a pair of individuals is the same). Based on the percentage, we can tell whether two 
individuals are first degree, second degree, or not related. We will use the kinship2 software which 
takes in a pedigree object and output coefficients of relateness. Comparing the two tables of coefficients,
we can verify the accuracy of the pedigree, which is constructed only from words of participants. 
