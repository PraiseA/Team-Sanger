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
if expr length "$SLACK_UNAME >= expr length "$TWITTER"
then
#Iterate over the letters of the slack username and check letter per letter whether it mismatches 
	for i in range(expr length "$SLACK_UNAME")
	#This is to catch instances where the shorter string falls out of range with the indexing
	do
	#If the index letter for slack username and twitter are different, increament the value of d by one
		if $SLACK_UNAME[i].lower() != $TWITTER[i].lower()
		then
			d=d+1
		elif
			d=d+1
		fi
	done

#This portion will only run in case its the twitter name handle longer than the slack username. 
#The rest of the code applies a similar approach as defined above.
elif expr length "$TWITTER" > expr length "$SLACK_UNAME"
	for i in range(expr length "$TWITTER")
	do
        	if $TWITTER[i].lower() != $SLACK_UNAME[i].lower()
		then
                	d=d+1
                elif
                	d=d+1
		fi
	done
#Printing out the output Each on a new line
printf "$NAME, $EMAIL, $SLACK_UNAME, $BIOSTACK, $TWITTER, d\n"
