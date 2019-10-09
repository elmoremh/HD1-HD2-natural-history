#!/bin/bash   
#SBATCH -n 1 # Number of cores requested 
#SBATCH -t 100 # Runtime in minutes 
#SBATCH -p general # Partition to submit to 
#SBATCH --mem=5000
#SBATCH -o HD1-HD2_variant_extraction_5-13-19_%j.out # Standard out goes to this file 
#SBATCH -e HD1-HD2_variant_extraction_5-13-19_%j.err # Standard err goes to this filehostname
#SBATCH --mail-type=ALL # Type of email notification- BEGIN,END,FAIL,ALL 
#SBATCH --mail-user=m.holly.elmore@gmail.com # Email to which notifications will be sent

### run from ~

module load vcftools/0.1.14-fasrc01

vcftools --gzvcf /n/scratchlfs/haig_lab/elmoremh/regal_mhelmore/phasing/phased/AmanitaBASE_all_individuals_phased_2-12-19.vcf.gz --out AmanitaBASE_all_individuals_phased_HD2 --chr Contig87 --from-bp 397802 --to-bp 398113 --recode 

vcftools --gzvcf /n/scratchlfs/haig_lab/elmoremh/regal_mhelmore/phasing/phased/AmanitaBASE_all_individuals_phased_2-12-19.vcf.gz --out AmanitaBASE_all_individuals_phased_HD1 --chr Contig87 --from-bp 398637 --to-bp 399359 --recode