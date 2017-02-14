#1/bin/bash
#hello
if [ $# -eq 0 ]; then #commmand runs if variable is equal to or greater than 0 
	echo "Usage: $0 filename" #displays this message
	exit 1 #error message for above test failing 
fi #closes this if then command 

filename=$1 #refers to the first argument 

echo -n "The number of genes in $filename is " #displays this line without the trailing newline with the answer to the pipeline below to tell you number of genes present

cat $filename | #prints the contents of the file to the screen 
	grep -v 'v#' | #shows lines that do not contain v# 
	cut -f3 | #extracts third field because that's the column with the type in the file  
	grep gene | #finds and prints lines with the word gene anywhere because we want to count the number of genes that this species has 
	wc -l #counts the number of lines that were identified by the above commands so you get your number of genes in the file

