#!/bin/bash
#SBATCH --nodes 1
#SBATCH --ntasks 10
#SBATCH --partition debug
#SBATCH --time=00:05:00
#SBATCH --chdir /home1/ttrojan/running-jobs-on-CARC-2022
#SBATCH --account=<account_id>
module purge
module load gcc/9.2.0
module load blast-plus
echo "Example blast start"
sleep 20
blastp -db /project/biodb/genbank/2022-01-01/swissprot -query data/blast/query.txt -out results/blast/results.txt -num_threads $SLURM_NTASKS
echo "Example blast end"
