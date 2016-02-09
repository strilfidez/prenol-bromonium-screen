#!/bin/bash 

#SBATCH -N 1        # number of nodes

#SBATCH -n 16   # number of cores 

#SBATCH -p normal   # partition to submit to 

#SBATCH --mem=48000  # memory per node in MB (see also --mem-per-cpu)

#SBATCH -t 2880 # expected runtime in minutes

#SBATCH -J g09_fritzJob # name of this job

# This is a template script for submitting Gaussian jobs
# to SLURM.  Tags starting with @ will be replaced with
# a script.  Eugene Kwan, May 2014

# prevent core dumps on job failure
ulimit -c 0

# set scratch
mkdir $LOCAL_SCRATCH/fritzScratch/
export GAUSS_SCRDIR=$LOCAL_SCRATCH/fritzScratch

# write out when and where the job started

echo "*************************************" > log.txt
echo "Scratch is: " $LOCAL_SCRATCH/fritzScratch >> log.txt
echo "Running on host:" >> log.txt
hostname >> log.txt
echo "Job fritzJob started at..." >> log.txt
date >> log.txt

# run job
g09 @JOBNAME.gjf @JOBNAME.out

# remove scratch
rm -rf $LOCAL_SCRATCH/fritzScratch

# move completed job to output directory
mv @JOBNAME.out "../output/"