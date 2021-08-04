#!/usr/bin/bash

#clone repo
#git clone https://github.com/PraiseA/Team-Sanger.git

#grant execute permission for all files in the cloned folder
#cd Team-Sanger
#chmod a+x *
#cd ..

#define header row for csv file
header=NAME,EMAIL,USERNAME,BIOSTACK,TWITTER_HANDLE,HAMMING_DISTANCE
#write header row to csv file
echo $header > sanger.csv

#write every details written in python after converting to comma separated
#for i in Team-Sanger/*.py

for py_file in *.py
do
	python $py_file >> sanger.csv
done

#write every details written in perl after converting to comma separated
#for i in Team-Sanger/*.pl
for pl_script in *pl
do
	perl $pl_script >> sanger.csv
done

#write every details written in R after converting to comma separated
#for i in Team-Sanger/*.R

	#for R_script in *.R
#do
#	Rscript $R_script >> sanger.csv
#done

#write every details written in bash after converting to comma separated
#for i in Team-Sanger/Ruth.sh
#        do
#                ./$i | sed -z 's/\n/,/g;s/,$/\n/' >> sanger.csv
#        done

#write every details written in C
#for i in Team-Sanger/*.c
for C_script in *.c
do
	gcc $C_script
	./a.out >> sanger.csv
	rm a.out
done

#write every details written in C++
#for i in Team-Sanger/*.cpp
for Cplus_script in *.cpp
do
	g++ $Cplus_script 
	./a.out >> sanger.csv
	rm a.out
done

#write every details written in java
#for i in Team-Sanger/*.java
for java_file in *.java
do
	javac $java_file 
	j_class=$(echo $java_file | sed 's/.java//')
	java $j_class >> sanger.csv
	rm ${j_class}.class
done

#write every details written in php
#for i in Team-Sanger/*.php
for php_script in *.php
do
	php $php_script >> sanger.csv
done

#Execute Javascript
for j_script in *.js
do
	node $j_script >>sanger.csv
done


#rm -rf Team-Sanger
