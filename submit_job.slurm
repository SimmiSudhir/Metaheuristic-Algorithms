#!/bin/bash
#SBATCH --job-name=fitness_function_array ## run in a array to run simulataneously
#SBATCH --partition=general
#SBATCH --array=1-50
#SBATCH --nodes=1
#SBATCH --cpus-per-task=10
#SBATCH --time=72:00:00
#SBATCH --mem=25
#SBATCH --output=DE_logs/DE_%A_%a.out
#SBATCH --error=DE_logs/DE_%A_%a.err

# Load R module - adjust module name based on available modules
#module load r/4.1.0-foss-2021a
module load r/4.4.0-gfbf-2023a

Rscript Rscript.R $SLURM_ARRAY_TASK_ID
