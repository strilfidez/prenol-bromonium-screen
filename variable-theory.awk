#variable-theory.awk by FS 2/5/2016
#Usage: awk -f variable-theory.awk template
#This program works as of 2/5/2016

BEGIN{
#Input section: 
#Write your levels of theory and basis sets in the strings below:
	levels_of_theory = "b3lyp m062x	pbe1pbe"
	split(levels_of_theory, theory, " ")  			#create array for theory
	basis_sets = "6-31g* cc-pvdz"
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
			result=sprintf("%s%s/%s%s%s-%s\n",routeCard1, theory[i],basis[j],routeCard2,theory[i],basis[j])
			file = sprintf("input/%s-%s-%s.gjf", FILENAME, theory[i], basis[j])
			gsub(/*/,"",file)
			for (k in template_coord) {
				result = result template_coord[k] "\n"
			}
			print result >> file
		}
	}
}