#!/bin/bash
Name="Heshica Battina Chowdary"
Email="heshicabattina982@gmail.com"
slack_username="@Heshica"
Biostack="Drug Development and Genomics"
TWITTER="@Heshicabattina"
d=0
if [ ${#slack_username} -eq ${#TWITTER} ]
then
	for ((i=0;i < ${#slack_username};i++ ))
	do
		if [ ${slack_username: $i:1} != ${TWITTER: $i:1} ]; then
			d=$((d+1)); fi
	done
#If slack has a greater length than twitter 35 
elif [ ${#slack_username} -gt ${#TWITTER} ]
then
	diff=$((${#slack_username} - ${#TWITTER}))
	for ((i=0; i<${#TWITTER}; i++))
	do
		if [ ${slack_username: $i:1} != ${TWITTER: $i:1} ]; then
			d=$((d+1)); fi
	done
	d=$((d+diff))
#If twitter has a greater length than slack 
elif [ ${#TWITTER} -gt ${#slack_username} ]
then
	diff=$((${#TWITTER}-${#slack_username}))
	for ((i=0; i<${#slack_username}; i++))
	do
		if [ ${slack_username: $i:1} != ${TWITTER: $i:1} ]; then
			d=$((d+1)); fi
	done
	d=$((d+diff))
fi
#echo $d
printf "$Name,$Email,$slack_username,$Biostack,$TWITTER,$d\n"
