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
g09 bromonium-b1b95-6-31g.gjf bromonium-b1b95-6-31g.out
g09 bromonium-b1b95-cc-pvdz.gjf bromonium-b1b95-cc-pvdz.out
g09 bromonium-b1b95-cc-pvtz.gjf bromonium-b1b95-cc-pvtz.out
g09 bromonium-b3lyp-6-31g.gjf bromonium-b3lyp-6-31g.out
g09 bromonium-b3lyp-cc-pvdz.gjf bromonium-b3lyp-cc-pvdz.out
g09 bromonium-b3lyp-cc-pvtz.gjf bromonium-b3lyp-cc-pvtz.out
g09 bromonium-b3lypempiricaldispersion=gd3bj-6-31g.gjf bromonium-b3lypempiricaldispersion=gd3bj-6-31g.out
g09 bromonium-b3lypempiricaldispersion=gd3bj-cc-pvdz.gjf bromonium-b3lypempiricaldispersion=gd3bj-cc-pvdz.out
g09 bromonium-b3lypempiricaldispersion=gd3bj-cc-pvtz.gjf bromonium-b3lypempiricaldispersion=gd3bj-cc-pvtz.out
g09 bromonium-b3pw91-6-31g.gjf bromonium-b3pw91-6-31g.out
g09 bromonium-b3pw91-cc-pvdz.gjf bromonium-b3pw91-cc-pvdz.out
g09 bromonium-b3pw91-cc-pvtz.gjf bromonium-b3pw91-cc-pvtz.out
g09 bromonium-b3pw91empiricaldispersion=gd3bj-6-31g.gjf bromonium-b3pw91empiricaldispersion=gd3bj-6-31g.out
g09 bromonium-b3pw91empiricaldispersion=gd3bj-cc-pvdz.gjf bromonium-b3pw91empiricaldispersion=gd3bj-cc-pvdz.out
g09 bromonium-b3pw91empiricaldispersion=gd3bj-cc-pvtz.gjf bromonium-b3pw91empiricaldispersion=gd3bj-cc-pvtz.out
g09 bromonium-b971-6-31g.gjf bromonium-b971-6-31g.out
g09 bromonium-b971-cc-pvdz.gjf bromonium-b971-cc-pvdz.out
g09 bromonium-b971-cc-pvtz.gjf bromonium-b971-cc-pvtz.out
g09 bromonium-b972-6-31g.gjf bromonium-b972-6-31g.out
g09 bromonium-b972-cc-pvdz.gjf bromonium-b972-cc-pvdz.out
g09 bromonium-b972-cc-pvtz.gjf bromonium-b972-cc-pvtz.out
g09 bromonium-b97d3-6-31g.gjf bromonium-b97d3-6-31g.out
g09 bromonium-b97d3-cc-pvdz.gjf bromonium-b97d3-cc-pvdz.out
g09 bromonium-b97d3-cc-pvtz.gjf bromonium-b97d3-cc-pvtz.out
g09 bromonium-b97d-6-31g.gjf bromonium-b97d-6-31g.out
g09 bromonium-b97d-cc-pvdz.gjf bromonium-b97d-cc-pvdz.out
g09 bromonium-b97d-cc-pvtz.gjf bromonium-b97d-cc-pvtz.out
g09 bromonium-b98-6-31g.gjf bromonium-b98-6-31g.out
g09 bromonium-b98-cc-pvdz.gjf bromonium-b98-cc-pvdz.out
g09 bromonium-b98-cc-pvtz.gjf bromonium-b98-cc-pvtz.out
g09 bromonium-bhandh-6-31g.gjf bromonium-bhandh-6-31g.out
g09 bromonium-bhandh-cc-pvdz.gjf bromonium-bhandh-cc-pvdz.out
g09 bromonium-bhandh-cc-pvtz.gjf bromonium-bhandh-cc-pvtz.out
g09 bromonium-bhandhlyp-6-31g.gjf bromonium-bhandhlyp-6-31g.out
g09 bromonium-bhandhlyp-cc-pvdz.gjf bromonium-bhandhlyp-cc-pvdz.out
g09 bromonium-bhandhlyp-cc-pvtz.gjf bromonium-bhandhlyp-cc-pvtz.out
g09 bromonium-blyp-6-31g.gjf bromonium-blyp-6-31g.out
g09 bromonium-blyp-cc-pvdz.gjf bromonium-blyp-cc-pvdz.out
g09 bromonium-blyp-cc-pvtz.gjf bromonium-blyp-cc-pvtz.out
g09 bromonium-blypempiricaldispersion=gd3bj-6-31g.gjf bromonium-blypempiricaldispersion=gd3bj-6-31g.out
g09 bromonium-blypempiricaldispersion=gd3bj-cc-pvdz.gjf bromonium-blypempiricaldispersion=gd3bj-cc-pvdz.out
g09 bromonium-blypempiricaldispersion=gd3bj-cc-pvtz.gjf bromonium-blypempiricaldispersion=gd3bj-cc-pvtz.out
g09 bromonium-bmk-6-31g.gjf bromonium-bmk-6-31g.out
g09 bromonium-bmk-cc-pvdz.gjf bromonium-bmk-cc-pvdz.out
g09 bromonium-bmk-cc-pvtz.gjf bromonium-bmk-cc-pvtz.out
g09 bromonium-bmkempiricaldispersion=gd3bj-6-31g.gjf bromonium-bmkempiricaldispersion=gd3bj-6-31g.out
g09 bromonium-bmkempiricaldispersion=gd3bj-cc-pvdz.gjf bromonium-bmkempiricaldispersion=gd3bj-cc-pvdz.out
g09 bromonium-bmkempiricaldispersion=gd3bj-cc-pvtz.gjf bromonium-bmkempiricaldispersion=gd3bj-cc-pvtz.out
g09 bromonium-cam-b3lyp-6-31g.gjf bromonium-cam-b3lyp-6-31g.out
g09 bromonium-cam-b3lyp-cc-pvdz.gjf bromonium-cam-b3lyp-cc-pvdz.out
g09 bromonium-cam-b3lyp-cc-pvtz.gjf bromonium-cam-b3lyp-cc-pvtz.out
g09 bromonium-cam-b3lypempiricaldispersion=gd3bj-6-31g.gjf bromonium-cam-b3lypempiricaldispersion=gd3bj-6-31g.out
g09 bromonium-cam-b3lypempiricaldispersion=gd3bj-cc-pvdz.gjf bromonium-cam-b3lypempiricaldispersion=gd3bj-cc-pvdz.out
g09 bromonium-cam-b3lypempiricaldispersion=gd3bj-cc-pvtz.gjf bromonium-cam-b3lypempiricaldispersion=gd3bj-cc-pvtz.out
g09 bromonium-hcth-6-31g.gjf bromonium-hcth-6-31g.out
g09 bromonium-hcth-cc-pvdz.gjf bromonium-hcth-cc-pvdz.out
g09 bromonium-hcth-cc-pvtz.gjf bromonium-hcth-cc-pvtz.out
g09 bromonium-hf-6-31g.gjf bromonium-hf-6-31g.out
g09 bromonium-hf-cc-pvdz.gjf bromonium-hf-cc-pvdz.out
g09 bromonium-hf-cc-pvtz.gjf bromonium-hf-cc-pvtz.out
g09 bromonium-hseh1pbe-6-31g.gjf bromonium-hseh1pbe-6-31g.out
g09 bromonium-hseh1pbe-cc-pvdz.gjf bromonium-hseh1pbe-cc-pvdz.out
g09 bromonium-hseh1pbe-cc-pvtz.gjf bromonium-hseh1pbe-cc-pvtz.out
g09 bromonium-lc-wpbe-6-31g.gjf bromonium-lc-wpbe-6-31g.out
g09 bromonium-lc-wpbe-cc-pvdz.gjf bromonium-lc-wpbe-cc-pvdz.out
g09 bromonium-lc-wpbe-cc-pvtz.gjf bromonium-lc-wpbe-cc-pvtz.out
g09 bromonium-lc-wpbeempiricaldispersion=gd3bj-6-31g.gjf bromonium-lc-wpbeempiricaldispersion=gd3bj-6-31g.out
g09 bromonium-lc-wpbeempiricaldispersion=gd3bj-cc-pvdz.gjf bromonium-lc-wpbeempiricaldispersion=gd3bj-cc-pvdz.out
g09 bromonium-lc-wpbeempiricaldispersion=gd3bj-cc-pvtz.gjf bromonium-lc-wpbeempiricaldispersion=gd3bj-cc-pvtz.out
g09 bromonium-m062x-6-31g.gjf bromonium-m062x-6-31g.out
g09 bromonium-m062x-cc-pvdz.gjf bromonium-m062x-cc-pvdz.out
g09 bromonium-m062x-cc-pvtz.gjf bromonium-m062x-cc-pvtz.out
g09 bromonium-m062xempiricaldispersion=gd3-6-31g.gjf bromonium-m062xempiricaldispersion=gd3-6-31g.out
g09 bromonium-m062xempiricaldispersion=gd3-cc-pvdz.gjf bromonium-m062xempiricaldispersion=gd3-cc-pvdz.out
g09 bromonium-m062xempiricaldispersion=gd3-cc-pvtz.gjf bromonium-m062xempiricaldispersion=gd3-cc-pvtz.out
g09 bromonium-m06empiricaldispersion=gd3-6-31g.gjf bromonium-m06empiricaldispersion=gd3-6-31g.out
g09 bromonium-m06empiricaldispersion=gd3-cc-pvdz.gjf bromonium-m06empiricaldispersion=gd3-cc-pvdz.out
g09 bromonium-m06empiricaldispersion=gd3-cc-pvtz.gjf bromonium-m06empiricaldispersion=gd3-cc-pvtz.out
g09 bromonium-m06hfempiricaldispersion=gd3-6-31g.gjf bromonium-m06hfempiricaldispersion=gd3-6-31g.out
g09 bromonium-m06hfempiricaldispersion=gd3-cc-pvdz.gjf bromonium-m06hfempiricaldispersion=gd3-cc-pvdz.out
g09 bromonium-m06hfempiricaldispersion=gd3-cc-pvtz.gjf bromonium-m06hfempiricaldispersion=gd3-cc-pvtz.out
g09 bromonium-m06lempiricaldispersion=gd3-6-31g.gjf bromonium-m06lempiricaldispersion=gd3-6-31g.out
g09 bromonium-m06lempiricaldispersion=gd3-cc-pvdz.gjf bromonium-m06lempiricaldispersion=gd3-cc-pvdz.out
g09 bromonium-m06lempiricaldispersion=gd3-cc-pvtz.gjf bromonium-m06lempiricaldispersion=gd3-cc-pvtz.out
g09 bromonium-mpw1lyp-6-31g.gjf bromonium-mpw1lyp-6-31g.out
g09 bromonium-mpw1lyp-cc-pvdz.gjf bromonium-mpw1lyp-cc-pvdz.out
g09 bromonium-mpw1lyp-cc-pvtz.gjf bromonium-mpw1lyp-cc-pvtz.out
g09 bromonium-mpw1pw91-6-31g.gjf bromonium-mpw1pw91-6-31g.out
g09 bromonium-mpw1pw91-cc-pvdz.gjf bromonium-mpw1pw91-cc-pvdz.out
g09 bromonium-mpw1pw91-cc-pvtz.gjf bromonium-mpw1pw91-cc-pvtz.out
g09 bromonium-pbe1pbe-6-31g.gjf bromonium-pbe1pbe-6-31g.out
g09 bromonium-pbe1pbe-cc-pvdz.gjf bromonium-pbe1pbe-cc-pvdz.out
g09 bromonium-pbe1pbe-cc-pvtz.gjf bromonium-pbe1pbe-cc-pvtz.out
g09 bromonium-pbe1pbeempiricaldispersion=gd3bj-6-31g.gjf bromonium-pbe1pbeempiricaldispersion=gd3bj-6-31g.out
g09 bromonium-pbe1pbeempiricaldispersion=gd3bj-cc-pvdz.gjf bromonium-pbe1pbeempiricaldispersion=gd3bj-cc-pvdz.out
g09 bromonium-pbe1pbeempiricaldispersion=gd3bj-cc-pvtz.gjf bromonium-pbe1pbeempiricaldispersion=gd3bj-cc-pvtz.out
g09 bromonium-pbeh1pbe-6-31g.gjf bromonium-pbeh1pbe-6-31g.out
g09 bromonium-pbeh1pbe-cc-pvdz.gjf bromonium-pbeh1pbe-cc-pvdz.out
g09 bromonium-pbeh1pbe-cc-pvtz.gjf bromonium-pbeh1pbe-cc-pvtz.out
g09 bromonium-tpsstpss-6-31g.gjf bromonium-tpsstpss-6-31g.out
g09 bromonium-tpsstpss-cc-pvdz.gjf bromonium-tpsstpss-cc-pvdz.out
g09 bromonium-tpsstpss-cc-pvtz.gjf bromonium-tpsstpss-cc-pvtz.out
g09 bromonium-tpsstpssempiricaldispersion=gd3bj-6-31g.gjf bromonium-tpsstpssempiricaldispersion=gd3bj-6-31g.out
g09 bromonium-tpsstpssempiricaldispersion=gd3bj-cc-pvdz.gjf bromonium-tpsstpssempiricaldispersion=gd3bj-cc-pvdz.out
g09 bromonium-tpsstpssempiricaldispersion=gd3bj-cc-pvtz.gjf bromonium-tpsstpssempiricaldispersion=gd3bj-cc-pvtz.out
g09 bromonium-vsxc-6-31g.gjf bromonium-vsxc-6-31g.out
g09 bromonium-vsxc-cc-pvdz.gjf bromonium-vsxc-cc-pvdz.out
g09 bromonium-vsxc-cc-pvtz.gjf bromonium-vsxc-cc-pvtz.out
g09 bromonium-wb97x-6-31g.gjf bromonium-wb97x-6-31g.out
g09 bromonium-wb97x-cc-pvdz.gjf bromonium-wb97x-cc-pvdz.out
g09 bromonium-wb97x-cc-pvtz.gjf bromonium-wb97x-cc-pvtz.out
g09 bromonium-wb97xd-6-31g.gjf bromonium-wb97xd-6-31g.out
g09 bromonium-wb97xd-cc-pvdz.gjf bromonium-wb97xd-cc-pvdz.out
g09 bromonium-wb97xd-cc-pvtz.gjf bromonium-wb97xd-cc-pvtz.out
g09 prenol-b1b95-6-31g.gjf prenol-b1b95-6-31g.out
g09 prenol-b1b95-cc-pvdz.gjf prenol-b1b95-cc-pvdz.out
g09 prenol-b1b95-cc-pvtz.gjf prenol-b1b95-cc-pvtz.out
g09 prenol-b3lyp-6-31g.gjf prenol-b3lyp-6-31g.out
g09 prenol-b3lyp-cc-pvdz.gjf prenol-b3lyp-cc-pvdz.out
g09 prenol-b3lyp-cc-pvtz.gjf prenol-b3lyp-cc-pvtz.out
g09 prenol-b3lypempiricaldispersion=gd3bj-6-31g.gjf prenol-b3lypempiricaldispersion=gd3bj-6-31g.out
g09 prenol-b3lypempiricaldispersion=gd3bj-cc-pvdz.gjf prenol-b3lypempiricaldispersion=gd3bj-cc-pvdz.out
g09 prenol-b3lypempiricaldispersion=gd3bj-cc-pvtz.gjf prenol-b3lypempiricaldispersion=gd3bj-cc-pvtz.out
g09 prenol-b3pw91-6-31g.gjf prenol-b3pw91-6-31g.out
g09 prenol-b3pw91-cc-pvdz.gjf prenol-b3pw91-cc-pvdz.out
g09 prenol-b3pw91-cc-pvtz.gjf prenol-b3pw91-cc-pvtz.out
g09 prenol-b3pw91empiricaldispersion=gd3bj-6-31g.gjf prenol-b3pw91empiricaldispersion=gd3bj-6-31g.out
g09 prenol-b3pw91empiricaldispersion=gd3bj-cc-pvdz.gjf prenol-b3pw91empiricaldispersion=gd3bj-cc-pvdz.out
g09 prenol-b3pw91empiricaldispersion=gd3bj-cc-pvtz.gjf prenol-b3pw91empiricaldispersion=gd3bj-cc-pvtz.out
g09 prenol-b971-6-31g.gjf prenol-b971-6-31g.out
g09 prenol-b971-cc-pvdz.gjf prenol-b971-cc-pvdz.out
g09 prenol-b971-cc-pvtz.gjf prenol-b971-cc-pvtz.out
g09 prenol-b972-6-31g.gjf prenol-b972-6-31g.out
g09 prenol-b972-cc-pvdz.gjf prenol-b972-cc-pvdz.out
g09 prenol-b972-cc-pvtz.gjf prenol-b972-cc-pvtz.out
g09 prenol-b97d3-6-31g.gjf prenol-b97d3-6-31g.out
g09 prenol-b97d3-cc-pvdz.gjf prenol-b97d3-cc-pvdz.out
g09 prenol-b97d3-cc-pvtz.gjf prenol-b97d3-cc-pvtz.out
g09 prenol-b97d-6-31g.gjf prenol-b97d-6-31g.out
g09 prenol-b97d-cc-pvdz.gjf prenol-b97d-cc-pvdz.out
g09 prenol-b97d-cc-pvtz.gjf prenol-b97d-cc-pvtz.out
g09 prenol-b98-6-31g.gjf prenol-b98-6-31g.out
g09 prenol-b98-cc-pvdz.gjf prenol-b98-cc-pvdz.out
g09 prenol-b98-cc-pvtz.gjf prenol-b98-cc-pvtz.out
g09 prenol-bhandh-6-31g.gjf prenol-bhandh-6-31g.out
g09 prenol-bhandh-cc-pvdz.gjf prenol-bhandh-cc-pvdz.out
g09 prenol-bhandh-cc-pvtz.gjf prenol-bhandh-cc-pvtz.out
g09 prenol-bhandhlyp-6-31g.gjf prenol-bhandhlyp-6-31g.out
g09 prenol-bhandhlyp-cc-pvdz.gjf prenol-bhandhlyp-cc-pvdz.out
g09 prenol-bhandhlyp-cc-pvtz.gjf prenol-bhandhlyp-cc-pvtz.out
g09 prenol-blyp-6-31g.gjf prenol-blyp-6-31g.out
g09 prenol-blyp-cc-pvdz.gjf prenol-blyp-cc-pvdz.out
g09 prenol-blyp-cc-pvtz.gjf prenol-blyp-cc-pvtz.out
g09 prenol-blypempiricaldispersion=gd3bj-6-31g.gjf prenol-blypempiricaldispersion=gd3bj-6-31g.out
g09 prenol-blypempiricaldispersion=gd3bj-cc-pvdz.gjf prenol-blypempiricaldispersion=gd3bj-cc-pvdz.out
g09 prenol-blypempiricaldispersion=gd3bj-cc-pvtz.gjf prenol-blypempiricaldispersion=gd3bj-cc-pvtz.out
g09 prenol-bmk-6-31g.gjf prenol-bmk-6-31g.out
g09 prenol-bmk-cc-pvdz.gjf prenol-bmk-cc-pvdz.out
g09 prenol-bmk-cc-pvtz.gjf prenol-bmk-cc-pvtz.out
g09 prenol-bmkempiricaldispersion=gd3bj-6-31g.gjf prenol-bmkempiricaldispersion=gd3bj-6-31g.out
g09 prenol-bmkempiricaldispersion=gd3bj-cc-pvdz.gjf prenol-bmkempiricaldispersion=gd3bj-cc-pvdz.out
g09 prenol-bmkempiricaldispersion=gd3bj-cc-pvtz.gjf prenol-bmkempiricaldispersion=gd3bj-cc-pvtz.out
g09 prenol-cam-b3lyp-6-31g.gjf prenol-cam-b3lyp-6-31g.out
g09 prenol-cam-b3lyp-cc-pvdz.gjf prenol-cam-b3lyp-cc-pvdz.out
g09 prenol-cam-b3lyp-cc-pvtz.gjf prenol-cam-b3lyp-cc-pvtz.out
g09 prenol-cam-b3lypempiricaldispersion=gd3bj-6-31g.gjf prenol-cam-b3lypempiricaldispersion=gd3bj-6-31g.out
g09 prenol-cam-b3lypempiricaldispersion=gd3bj-cc-pvdz.gjf prenol-cam-b3lypempiricaldispersion=gd3bj-cc-pvdz.out
g09 prenol-cam-b3lypempiricaldispersion=gd3bj-cc-pvtz.gjf prenol-cam-b3lypempiricaldispersion=gd3bj-cc-pvtz.out
g09 prenol-hcth-6-31g.gjf prenol-hcth-6-31g.out
g09 prenol-hcth-cc-pvdz.gjf prenol-hcth-cc-pvdz.out
g09 prenol-hcth-cc-pvtz.gjf prenol-hcth-cc-pvtz.out
g09 prenol-hf-6-31g.gjf prenol-hf-6-31g.out
g09 prenol-hf-cc-pvdz.gjf prenol-hf-cc-pvdz.out
g09 prenol-hf-cc-pvtz.gjf prenol-hf-cc-pvtz.out
g09 prenol-hseh1pbe-6-31g.gjf prenol-hseh1pbe-6-31g.out
g09 prenol-hseh1pbe-cc-pvdz.gjf prenol-hseh1pbe-cc-pvdz.out
g09 prenol-hseh1pbe-cc-pvtz.gjf prenol-hseh1pbe-cc-pvtz.out
g09 prenol-lc-wpbe-6-31g.gjf prenol-lc-wpbe-6-31g.out
g09 prenol-lc-wpbe-cc-pvdz.gjf prenol-lc-wpbe-cc-pvdz.out
g09 prenol-lc-wpbe-cc-pvtz.gjf prenol-lc-wpbe-cc-pvtz.out
g09 prenol-lc-wpbeempiricaldispersion=gd3bj-6-31g.gjf prenol-lc-wpbeempiricaldispersion=gd3bj-6-31g.out
g09 prenol-lc-wpbeempiricaldispersion=gd3bj-cc-pvdz.gjf prenol-lc-wpbeempiricaldispersion=gd3bj-cc-pvdz.out
g09 prenol-lc-wpbeempiricaldispersion=gd3bj-cc-pvtz.gjf prenol-lc-wpbeempiricaldispersion=gd3bj-cc-pvtz.out
g09 prenol-m062x-6-31g.gjf prenol-m062x-6-31g.out
g09 prenol-m062x-cc-pvdz.gjf prenol-m062x-cc-pvdz.out
g09 prenol-m062x-cc-pvtz.gjf prenol-m062x-cc-pvtz.out
g09 prenol-m062xempiricaldispersion=gd3-6-31g.gjf prenol-m062xempiricaldispersion=gd3-6-31g.out
g09 prenol-m062xempiricaldispersion=gd3-cc-pvdz.gjf prenol-m062xempiricaldispersion=gd3-cc-pvdz.out
g09 prenol-m062xempiricaldispersion=gd3-cc-pvtz.gjf prenol-m062xempiricaldispersion=gd3-cc-pvtz.out
g09 prenol-m06empiricaldispersion=gd3-6-31g.gjf prenol-m06empiricaldispersion=gd3-6-31g.out
g09 prenol-m06empiricaldispersion=gd3-cc-pvdz.gjf prenol-m06empiricaldispersion=gd3-cc-pvdz.out
g09 prenol-m06empiricaldispersion=gd3-cc-pvtz.gjf prenol-m06empiricaldispersion=gd3-cc-pvtz.out
g09 prenol-m06hfempiricaldispersion=gd3-6-31g.gjf prenol-m06hfempiricaldispersion=gd3-6-31g.out
g09 prenol-m06hfempiricaldispersion=gd3-cc-pvdz.gjf prenol-m06hfempiricaldispersion=gd3-cc-pvdz.out
g09 prenol-m06hfempiricaldispersion=gd3-cc-pvtz.gjf prenol-m06hfempiricaldispersion=gd3-cc-pvtz.out
g09 prenol-m06lempiricaldispersion=gd3-6-31g.gjf prenol-m06lempiricaldispersion=gd3-6-31g.out
g09 prenol-m06lempiricaldispersion=gd3-cc-pvdz.gjf prenol-m06lempiricaldispersion=gd3-cc-pvdz.out
g09 prenol-m06lempiricaldispersion=gd3-cc-pvtz.gjf prenol-m06lempiricaldispersion=gd3-cc-pvtz.out
g09 prenol-mpw1lyp-6-31g.gjf prenol-mpw1lyp-6-31g.out
g09 prenol-mpw1lyp-cc-pvdz.gjf prenol-mpw1lyp-cc-pvdz.out
g09 prenol-mpw1lyp-cc-pvtz.gjf prenol-mpw1lyp-cc-pvtz.out
g09 prenol-mpw1pw91-6-31g.gjf prenol-mpw1pw91-6-31g.out
g09 prenol-mpw1pw91-cc-pvdz.gjf prenol-mpw1pw91-cc-pvdz.out
g09 prenol-mpw1pw91-cc-pvtz.gjf prenol-mpw1pw91-cc-pvtz.out
g09 prenol-pbe1pbe-6-31g.gjf prenol-pbe1pbe-6-31g.out
g09 prenol-pbe1pbe-cc-pvdz.gjf prenol-pbe1pbe-cc-pvdz.out
g09 prenol-pbe1pbe-cc-pvtz.gjf prenol-pbe1pbe-cc-pvtz.out
g09 prenol-pbe1pbeempiricaldispersion=gd3bj-6-31g.gjf prenol-pbe1pbeempiricaldispersion=gd3bj-6-31g.out
g09 prenol-pbe1pbeempiricaldispersion=gd3bj-cc-pvdz.gjf prenol-pbe1pbeempiricaldispersion=gd3bj-cc-pvdz.out
g09 prenol-pbe1pbeempiricaldispersion=gd3bj-cc-pvtz.gjf prenol-pbe1pbeempiricaldispersion=gd3bj-cc-pvtz.out
g09 prenol-pbeh1pbe-6-31g.gjf prenol-pbeh1pbe-6-31g.out
g09 prenol-pbeh1pbe-cc-pvdz.gjf prenol-pbeh1pbe-cc-pvdz.out
g09 prenol-pbeh1pbe-cc-pvtz.gjf prenol-pbeh1pbe-cc-pvtz.out
g09 prenol-tpsstpss-6-31g.gjf prenol-tpsstpss-6-31g.out
g09 prenol-tpsstpss-cc-pvdz.gjf prenol-tpsstpss-cc-pvdz.out
g09 prenol-tpsstpss-cc-pvtz.gjf prenol-tpsstpss-cc-pvtz.out
g09 prenol-tpsstpssempiricaldispersion=gd3bj-6-31g.gjf prenol-tpsstpssempiricaldispersion=gd3bj-6-31g.out
g09 prenol-tpsstpssempiricaldispersion=gd3bj-cc-pvdz.gjf prenol-tpsstpssempiricaldispersion=gd3bj-cc-pvdz.out
g09 prenol-tpsstpssempiricaldispersion=gd3bj-cc-pvtz.gjf prenol-tpsstpssempiricaldispersion=gd3bj-cc-pvtz.out
g09 prenol-vsxc-6-31g.gjf prenol-vsxc-6-31g.out
g09 prenol-vsxc-cc-pvdz.gjf prenol-vsxc-cc-pvdz.out
g09 prenol-vsxc-cc-pvtz.gjf prenol-vsxc-cc-pvtz.out
g09 prenol-wb97x-6-31g.gjf prenol-wb97x-6-31g.out
g09 prenol-wb97x-cc-pvdz.gjf prenol-wb97x-cc-pvdz.out
g09 prenol-wb97x-cc-pvtz.gjf prenol-wb97x-cc-pvtz.out
g09 prenol-wb97xd-6-31g.gjf prenol-wb97xd-6-31g.out
g09 prenol-wb97xd-cc-pvdz.gjf prenol-wb97xd-cc-pvdz.out
g09 prenol-wb97xd-cc-pvtz.gjf prenol-wb97xd-cc-pvtz.out

# remove scratch
rm -rf $LOCAL_SCRATCH/fritzScratch

# move completed job to output directory

