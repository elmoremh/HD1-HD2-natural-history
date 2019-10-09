#!/bin/bash  
#SBATCH -n 1 # Number of cores requested 
#SBATCH -t 6-12:00:00 # Runtime in minutes #Tim suggested 72 hours 
#SBATCH -p general # Partition to submit to 
#SBATCH --mem=64G
#SBATCH -o whatshap_2-12-19_%j.out # Standard out goes to this file 
#SBATCH -e whatshap_2-12-19_%j.err # Standard err goes to this filehostname
#SBATCH --mail-type=ALL # Type of email notification- BEGIN,END,FAIL,ALL 
#SBATCH --mail-user=m.holly.elmore@gmail.com # Email to which notifications will be sent

ulimit -v 63,500,000 ### soft memory limit of 63.5G

source activate whatshap

### run from /n/home15/elmoremh/regal_mhelmore/phasing/bams

echo "all bams that correspond with the vcf"

whatshap phase -o ../phased/AmanitaBASE_all_individuals_phased_2-6-19.vcf ../AmanitaBASE_SNPs_default_filter_12-11-17.vcf 10003.dedup.bam 10237.dedup.bam 10309.dedup.bam 10509.dedup.bam 10004.dedup.bam 10238.dedup.bam 10326.dedup.bam 10510.dedup.bam 10007.dedup.bam 10239.dedup.bam 10327.dedup.bam 10511.dedup.bam 10016.dedup.bam 10240.dedup.bam 10328.dedup.bam 10512.dedup.bam 10018.dedup.bam 10241.dedup.bam 10329.dedup.bam 10513.dedup.bam 10019.dedup.bam 10277.dedup.bam 10330.dedup.bam 10707.dedup.bam 10169.dedup.bam 10280.dedup.bam 10331.dedup.bam 10708.dedup.bam 10170.dedup.bam 10281.dedup.bam 10334.dedup.bam 10709.dedup.bam 10171.dedup.bam 10282.dedup.bam 10347.dedup.bam 10710.dedup.bam 10175.dedup.bam 10283.dedup.bam 10348.dedup.bam 10711.dedup.bam 10221.dedup.bam 10287.dedup.bam 10349.dedup.bam 10712.dedup.bam 10222.dedup.bam 10288.dedup.bam 10350.dedup.bam 10713.dedup.bam 10223.dedup.bam 10292.dedup.bam 10354.dedup.bam 10715.dedup.bam 10224.dedup.bam 10293.dedup.bam 10355.dedup.bam 10716.dedup.bam 10225.dedup.bam 10294.dedup.bam 10356.dedup.bam 10717.dedup.bam 10226.dedup.bam 10295.dedup.bam 10380.dedup.bam 10718.dedup.bam 10227.dedup.bam 10298.dedup.bam 10384.dedup.bam 10719.dedup.bam 10228.dedup.bam 10299.dedup.bam 10502.dedup.bam 10720.dedup.bam 10229.dedup.bam 10300.dedup.bam 10503.dedup.bam 10721.dedup.bam 10230.dedup.bam 10301.dedup.bam 10504.dedup.bam 10801.dedup.bam 10231.dedup.bam 10303.dedup.bam 10505.dedup.bam 10802.dedup.bam 10232.dedup.bam 10304.dedup.bam 10506.dedup.bam 10233.dedup.bam 10306.dedup.bam 10508.dedup.bam



