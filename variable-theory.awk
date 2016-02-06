#variable-theory.awk by FS 2/5/2016
#Usage: awk -f variable-theory.awk template
#Template belongs in the same directory.
#This program creates many .gjf files in the /input directory. 

BEGIN{
#Input section: 
#Write your levels of theory and basis sets in the strings below:
	levels_of_theory = "b3lyp_m062x_pbe1pbe_b1b95_b3lyp empiricaldispersion=gd3bj_b3pw91_b3pw91 empiricaldispersion=gd3bj_b971_b972_b97d_b97d3_b98_bhandh_bhandhlyp_blyp empiricaldispersion=gd3bj_blyp_bmk empiricaldispersion=gd3bj_bmk_cam-b3lyp_cam-b3lyp empiricaldispersion=gd3bj_hcth_hf_hseh1pbe_lc-wpbe empiricaldispersion=gd3bj_lc-wpbe_m06 empiricaldispersion=gd3_m062x empiricaldispersion=gd3_m06hf empiricaldispersion=gd3_m06l empiricaldispersion=gd3_mpw1lyp_mpw1pw91_pbe1pbe empiricaldispersion=gd3bj_pbeh1pbe_tpsstpss empiricaldispersion=gd3bj_tpsstpss_vsxc_wb97x_wb97xd"
	split(levels_of_theory, theory, "_")  			#create array for theory
	basis_sets = "6-31g* cc-pvdz cc-pvtz"
	split(basis_sets, basis, " ")					#create array for basis

#Write your Route card in the string below:
routeCard1="%nprocshared=16\n%mem=32GB\n#p opt "		#leave space for theory and basis
routeCard2="\ngeom=connectivity freq=noraman\n\nTitle: " #leave space for title
}

#Read the template and store it in an array
#Leave 1 empty line at top, and 2 or more empty lines at bottom of template file.
{
	template_coord[FNR]=$0
}

END{
#File creation section:
	for(i in theory){
		for(j in basis){
			result=sprintf("%s%s %s%s%s-%s\n",routeCard1, theory[i],basis[j],routeCard2,theory[i],basis[j])
			file = sprintf("input/%s-%s-%s.gjf", FILENAME, theory[i], basis[j])
			gsub(/*/,"",file)
			gsub(/ /,"",file)
			for (k in template_coord) {
				result = result template_coord[k] "\n"
			}
			print result >> file
		}
	}
}