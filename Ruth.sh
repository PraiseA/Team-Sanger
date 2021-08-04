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
if len(s_uname) >= len(twitter):
	#Iterate over the letters of the slack username and check letter per letter whether it mismatches 
	for i in range(len(s_uname)):
		#This is to catch instances where the shorter string falls out of range with the indexing
		try:
			#If the index letter for slack username and twitter are different, increament the value of d by one
			if s_uname[i].lower() != twitter[i].lower():
				d=d+1
		except:
			#When the shorter string falls out of range, still increament the value d by one for each instance
			d=d+1

#This portion will only run in case its the twitter name handle longer than the slack username. 
#The rest of the code applies a similar approach as defined above.
elif len(twitter) > len(s_uname):
	for i in range(len(twitter)):
                try:
                        if twitter[i].lower() != s_uname[i].lower():
                                d=d+1
                except:
                        d=d+1

#Printing out the output Each on a new line
printf "$NAME, $EMAIL, $SLACK_UNAME, $BIOSTACK, $TWITTER, d\n"
