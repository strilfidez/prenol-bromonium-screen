#!/bin/bash 

#SBATCH -N 1        # number of nodes

#SBATCH -n 16   # number of cores 

#SBATCH -p normal   # partition to submit to 

#SBATCH --mem=34000  # memory per node in MB (see also --mem-per-cpu)

#SBATCH -t 360 # expected runtime in minutes

#SBATCH -J g09_scan1_260_365 # name of this job

# This is a template script for submitting Gaussian jobs
# to SLURM.  Tags starting with @ will be replaced with
# a script.  Eugene Kwan, May 2014

# prevent core dumps on job failure
ulimit -c 0

# set scratch
mkdir $LOCAL_SCRATCH/fseidl_scan1_260_365/
export GAUSS_SCRDIR=$LOCAL_SCRATCH/fseidl_scan1_260_365

# write out when and where the job started

echo "*************************************" > log.txt
echo "Scratch is: " $LOCAL_SCRATCH/fseidl_scan1_260_365 >> log.txt
echo "Running on host:" >> log.txt
hostname >> log.txt
echo "Job scan1_260_365 started at..." >> log.txt
date >> log.txt

# run job
g09 scan1_260_365.gjf scan1_260_365.out

# remove scratch
rm -rf $LOCAL_SCRATCH/fseidl_scan1_260_365

# analyze the result
./analyze.sh scan1_260_365.out >> log.txt

# add it to the master log
cat log.txt >> ../output/output.txt

# move completed job to output directory
mv scan1_260_365.out "../output/"


