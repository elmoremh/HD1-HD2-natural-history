#!/bin/bash   
#SBATCH -n 1 # Number of cores requested 
#SBATCH -t 30 # Runtime in minutes 
#SBATCH -p general # Partition to submit to 
#SBATCH --mem=500 
#SBATCH -o logs/bcftools-consensus_HD1_6-7-19_%j.out # Standard out goes to this file 
#SBATCH -e logs/bcftools-consensus_HD1_6-7-19_%j.err # Standard err goes to this filehostname
#SBATCH --mail-type=ALL # Type of email notification- BEGIN,END,FAIL,ALL 
#SBATCH --mail-user=m.holly.elmore@gmail.com # Email to which notifications will be sent


###Run from /n/scratchlfs/haig_lab/elmoremh/regal_mhelmore/bcftools-consensus

SAMPLE=$1


>&2 echo ${SAMPLE}

###HD1

>&2 echo HD1 Haplotype 1

/n/home15/elmoremh/sw/bcftools/bcftools consensus --haplotype 1pIu -s ${SAMPLE} ~/AmanitaBASE_all_individuals_phased_HD1.recode.vcf.gz -f ~/10511_HD1.fasta > ${SAMPLE}_HD1_H1pIu_bcftools-consensus.fasta

>&2 echo HD1 Haplotype 2

/n/home15/elmoremh/sw/bcftools/bcftools consensus --haplotype 2pIu -s ${SAMPLE} ~/AmanitaBASE_all_individuals_phased_HD1.recode.vcf.gz -f ~/10511_HD1.fasta > ${SAMPLE}_HD1_H2pIu_bcftools-consensus.fasta
