#templateSlurm.awk by FS 2/5/2016
#Usage: awk -f templateSlurm.awk fritzTemplate.sh 1.gjf 2.gjf 3.gjf etc. (many gjf files)
#(the template is the first file passed; all subsequent files are .gjf files)
#All of your gjf and template files should be in the current working directory.
#This program creates a file in the current working directory called fritzJob.sh

#initialize fileCount variable
BEGIN{fileCount=0}

#Read the template file into an array
(NR==FNR){
	template_line[FNR]=$0
}

#Read the filenames of all other files into an array
(NR!=FNR && FNR==1){
	fileCount++
	files[fileCount]=FILENAME
}

#Print the new template. Note: No logs generated, output files in same directory.
END{
	for(i=1; i<=35; i++){
		result = result template_line[i] "\n"	#print straight from template until line 35
	}
	for(j=1; j<=fileCount; j++){
		result = result sprintf("g09 %s.gjf %s.out\n", files[j], files[j])		#print jobs
	}
	for(i=37; i<=41; i++){
		result = result template_line[i] "\n"	#print straight from template as above
	}
	print result >> "fritzJob.sh"
}