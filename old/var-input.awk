#var-input.awk
#Abandoned project. Reason: too difficult, too general.

#Usage: awk -f var-input.awk theory.txt file-var.gjf 

#The first argument is a list of theories in a file, each on its own line. 

#The second argument is a gaussian gjf file containing a variable
#LEVEL_THEORY where the level of theory should be.
#The title card is set to TITLE and will also be renamed with the level of theory.

#This program will create a .gjf file for every level of theory specified.
#These files will be stored in the /input directory.

{
#Store theory values as strings in an array
#with line numbers as array keys.
	if (FILENAME == /*/.txt){
		theories[FNR]=$1
	}
}

#Make substitution and write files
{
	if (FILENAME == /*/.gjf){
		for(i in theories){
			gsub("LEVEL_THEORY", theories[i], $0)
			print $0 >> input/gsub("/","x",theories[i])".gjf"
		}
	}
}