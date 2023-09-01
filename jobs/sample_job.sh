#!/bin/bash
#SBATCH --nodes 1
#SBATCH --ntasks 1
#SBATCH --partition debug
#SBATCH --time=00:05:00
#SBATCH --chdir /home1/ttrojan/running-jobs-on-CARC-2023
#SBATCH --account=<account_id>
module purge
module load usc
echo "Example start"
echo `date`
sleep 30
echo "Example end"

