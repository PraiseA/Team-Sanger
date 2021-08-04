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

#Check if slack name is longer than or equal to the twitter handle
if len(s_uname) >= len(twitter)
then
#Iterate over the letters of the slack username and check letter per letter whether it mismatches 
	for i in range(len(s_uname))
	#This is to catch instances where the shorter string falls out of range with the indexing
	do
	#If the index letter for slack username and twitter are different, increament the value of d by one
		if s_uname[i].lower() != twitter[i].lower()
		then
			d=d+1
		else
			d=d+1
	done

#This portion will only run in case its the twitter name handle longer than the slack username. 
#The rest of the code applies a similar approach as defined above.
else len(twitter) > len(s_uname)
	for i in range(len(twitter))
	do
        	if twitter[i].lower() != s_uname[i].lower()
		then
                	d=d+1
                else
                	d=d+1
	done
#Printing out the output Each on a new line
printf "$NAME, $EMAIL, $SLACK_UNAME, $BIOSTACK, $TWITTER, d\n"
