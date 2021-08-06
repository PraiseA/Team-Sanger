#!/bin/bash

######################## Check if all the required tools are installed to run all the scripts #####################
#The required programs are node, java, g++, gcc, perl, R, php							  #
Program_exists() {												  #
    command -v "$1" >/dev/null 2>&1 #Ignore the output								  #
    if [[ $? -ne 0 ]]; then											  #
        echo "This script requires $1 but it's not installed. Please install and try again.";  exit 1 ;		  #
        fi  }													  #
														  #
for program in "javac" "java" "python" "g++" "gcc" "Rscript" "perl" "bash" "node" "php"; do			  #
    Program_exists "${program}"; done										  #
														  #
###################################################################################################################


#Delete the Repository folder in case it exists
[  -d Team-Sanger ] && rm -rf Team-Sanger

#clone a new copy repo 
git clone https://github.com/PraiseA/Team-Sanger.git
cd Team-Sanger   #Change dir to Team scripts folder

#Check if the outputfile exists, if yes delete and recreate empty one, or create new otherwise
if [ -f sanger.out ]; then rm sanger.out; touch sanger.out; else  touch sanger.out; fi
if [ -f ../sanger.csv ]; then rm ../sanger.csv;  fi

for script in $(ls)
do
        extension=${script##*\.}

        case $extension in

	#Python scripts
        py)
                python $script >> sanger.out ;;

        #R Scripts
	R)
                Rscript $script | sed 's/,$//' >> sanger.out ;;

	# Perl scripts
	pl)
		perl $script >> sanger.out ;;

	#For bash scripts
	sh)
                if [ $script != sanger.sh ]; then
                	bash $script >> sanger.out
		fi ;;

	#For C scripts
	c)
		gcc $script
		./a.out >> sanger.out
	        rm a.out ;;
 	
	#For C++ scripts
	cpp)
		g++ $script
		./a.out >> sanger.out
	        rm a.out ;;
        
	#For Java scripts
	java)
		javac $script
		j_class=$(echo $script | sed 's/.java//')
		java $j_class >> sanger.out
		rm ${j_class}.class ;;
	
	# For PHP scripts
	php)
		php $script >> sanger.out ;;
	
	# For javascript scripts 
	js)
		node $script >>sanger.out ;;
	esac
done

cd ..  #Exit out of the folder

sort Team-Sanger/sanger.out | uniq > sanger.csv  #Exclude duplicated entries
rm Team-Sanger/sanger.out  # Delete the intermediate file
cp sanger.csv Team-Sanger  #Keep a copy of the csv in the repo folder


#rm -rf Team-Sanger


echo -e "\n*******     THANK YOU FOR RUNNING TEAM SANGER's BASH SCRIPT.  BYE (^_^)     *******\n"
