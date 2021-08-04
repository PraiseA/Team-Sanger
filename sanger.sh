#!/usr/bin/bash

#clone repo
git clone https://github.com/PraiseA/Team-Sanger.git

#grant execute permission for all files in the cloned folder
cd Team-Sanger
chmod a+x *
cd ..

#define header row for csv file
header=NAME,EMAIL,USERNAME,BIOSTACK,TWITTER_HANDLE,HAMMING_DISTANCE
#write header row to csv file
echo $header > sanger.csv

#write every details written in python after converting to comma separated
for i in Team-Sanger/*.py
	do
		./$i | sed -z 's/\n/,/g;s/,$/\n/' >> sanger.csv
	done

#write every details written in perl after converting to comma separated
for i in Team-Sanger/*.pl
        do
                ./$i | sed -z 's/\n/,/g;s/,$/\n/' >> sanger.csv
        done

#write every details written in R after converting to comma separated
for i in Team-Sanger/*.R
        do
                ./$i | sed -z 's/\n/,/g;s/,$/\n/' >> sanger.csv
        done

#write every details written in bash after converting to comma separated
for i in Team-Sanger/Ruth.sh
        do
                ./$i | sed -z 's/\n/,/g;s/,$/\n/' >> sanger.csv
        done

#write every details written in C
for i in Team-Sanger/*.c
        do
                ./$i | sed -z 's/\n/,/g;s/,$/\n/' >> sanger.csv
        done

#write every details written in C++
for i in Team-Sanger/Amarachukwu_C++script.cpp
        do
                ./$i | sed -z 's/\n/,/g;s/,$/\n/' >> sanger.csv
        done

#write every details written in java
for i in Team-Sanger/*.java
        do
                ./$i | sed -z 's/\n/,/g;s/,$/\n/' >> sanger.csv
        done

#write every details written in php
for i in Team-Sanger/*.php
        do
                ./$i | sed -z 's/\n/,/g;s/,$/\n/' >> sanger.csv
        done

rm -rf Team-Sanger
