#!/usr/bin/env bash


#Defining variables

#Your name
NAME="Ruth Nanjala"

#my email address
EMAIL="ruthnanjala97@gmail.com"

#Slack Username
SLACK_UNAME="@Nanje"

#My preferred Biostack
BIOSTACK="Genomics"

#Twitter
TWITTER="@Ruthnanje"

d=0

if [ ${#SLACK_UNAME} -le ${#TWITTER} ]; then
	for i in ${SLACK_UNAME}; do
		if [ ${SLACK_UNAME,,}[i] != ${TWITTER,,}[i] ]; then
			d=`expr $d + 1`
		fi
	
	done
fi
echo $d

#Printing out the output
#printf "$NAME,$EMAIL,$SLACK_UNAME,$BIOSTACK,$TWITTER,$d\n"
