#!/bin/bash   
#SBATCH -n 1 # Number of cores requested 
#SBATCH -t 200 # Runtime in minutes 
#SBATCH -p general # Partition to submit to 
#SBATCH --mem=5000
#SBATCH -o RAxML_HD1-HD2_Ns_Aphal_ML_7-30-19_%j.out # Standard out goes to this file 
#SBATCH -e RAxML_HD1-HD2_Ns_Aphal_ML_7-30-19_%j.err # Standard err goes to this filehostname
#SBATCH --mail-type=ALL # Type of email notification- BEGIN,END,FAIL,ALL 
#SBATCH --mail-user=m.holly.elmore@gmail.com # Email to which notifications will be sent

### run from /n/home15/elmoremh/scratchlfs_elmoremh/regal_mhelmore/RAxML directory

module load gcc/7.1.0-fasrc01 RAxML/8.2.11-fasrc01

### raxmlHPC -s sequenceFileName -n outputFileName -m substitutionModel [-p 12345] [-b 123456 -# replicates to get bootstraps]


raxmlHPC -s HD1_bcftools-consensus_Aphal_seqs.Ns.fasta -n HD1_Ns_Aphal_ML_unreduced_7-30-19 -m GTRGAMMA -p 12345

raxmlHPC -s HD2_bcftools-consensus_Aphal_seqs.Ns.fasta -n HD2_Ns_Aphal_ML_unreduced_7-30-19 -m GTRGAMMA -p 12345

