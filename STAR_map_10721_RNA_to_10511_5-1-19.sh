#!/bin/bash   
#SBATCH -n 16 # Number of cores requested 
#SBATCH -t 7-00:00:00 # Runtime in minutes 
#SBATCH -p shared # Partition to submit to 
#SBATCH --mem=40000
#SBATCH -o logs/STAR_map_10721_RNA_to_10511_4-12-19_%j.out # Standard out goes to this file 
#SBATCH -e logs/STAR_map_10721_RNA_to_10511_4-12-19_%j.err # Standard err goes to this filehostname
#SBATCH --mail-type=ALL # Type of email notification- BEGIN,END,FAIL,ALL 
#SBATCH --mail-user=m.holly.elmore@gmail.com # Email to which notifications will be sent

### run from /n/home15/elmoremh/scratchlfs_elmoremh/regal_mhelmore/STAR

### template: STAR --option1-name option1-value(s)--option2-name option2-value(s)

module load STAR/2.7.0e-fasrc01

ulimit -v 39000000

STAR --runThreadN 16  --outFilterScoreMinOverLread 0 --outFilterMatchNminOverLread 0 --outFilterMatchNmin 0 --outFilterMismatchNmax 2 --readFilesCommand gunzip -c /n/home15/elmoremh/scratchlfs_elmoremh/regal_mhelmore/STAR/reads/BCA2JYANXX/10721_ATCACG_L005_R1_001.fastq.gz /n/home15/elmoremh/scratchlfs_elmoremh/regal_mhelmore/STAR/reads/BCA2JYANXX 10721_ATCACG_L005_R2_001.fastq.gz --genomeDir /n/home15/elmoremh/scratchlfs_elmoremh/regal_mhelmore/STAR/genome_indices
