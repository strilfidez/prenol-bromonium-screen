#!/bin/bash

theory="b3lyp_m062x_pbe1pbe_b1b95_b3lyp empiricaldispersion=gd3bj_b3pw91_b3pw91 empiricaldispersion=gd3bj_b971_b972_b97d_b97d3_b98_bhandh_bhandhlyp_blyp empiricaldispersion=gd3bj_blyp_bmk empiricaldispersion=gd3bj_bmk_cam-b3lyp_cam-b3lyp empiricaldispersion=gd3bj_hcth_hf_hseh1pbe_lc-wpbe empiricaldispersion=gd3bj_lc-wpbe_m06 empiricaldispersion=gd3_m062x empiricaldispersion=gd3_m06hf empiricaldispersion=gd3_m06l empiricaldispersion=gd3_mpw1lyp_mpw1pw91_pbe1pbe empiricaldispersion=gd3bj_pbeh1pbe_tpsstpss empiricaldispersion=gd3bj_tpsstpss_vsxc_wb97x_wb97xd"

for i in $theory; do
	echo $i > temp.txt
	testrt < temp.txt
	if [ $? -eq 0 ]; then
		echo $i Success!
	else
		echo $i FAILED
	fi
done