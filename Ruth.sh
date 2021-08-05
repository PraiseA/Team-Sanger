#!/usr/bin/env bash


#Defining variables

#Your name
NAME="Ruth Nanjala"

#my email address
EMAIL=ruthnanjala97@gmail.com

#Slack Username
SLACK_UNAME=@Nanje

#My preferred Biostack
BIOSTACK=Genomics

#Twitter
TWITTER=@Ruthnanje


#Calculate the Hamming distance
d=0

#If slack and twitter have equal lengths
if [ ${#SLACK_UNAME} -eq ${#TWITTER} ]
then
        for (( i=0; i<${#SLACK_UNAME}; i++ ))
        do
                if [ ${SLACK_UNAME:$i:1} != ${TWITTER:$i:1} ]; then
                        d=$((d+1)); fi
        done

#If slack has a greater length than twitter
elif [ ${#SLACK_UNAME} -gt ${#TWITTER} ]
then
        diff=$((${#SLACK_UNAME}-${#TWITTER}))
        for (( i=0; i<${#TWITTER}; i++ ))
        do
                if [ ${SLACK_UNAME:$i:1} != ${TWITTER:$i:1} ]; then
                        d=$((d+1)); fi
        done

        d=$((d+diff))

#If twitter has a greater length than slack
elif [ ${#TWITTER} -gt ${#SLACK_UNAME} ]
then
        diff=$((${#TWITTER}-${#SLACK_UNAME}))
        for (( i=0; i<${#SLACK_UNAME}; i++ ))
        do
                if [ ${SLACK_UNAME:$i:1} != ${TWITTER:$i:1} ]; then
                        d=$((d+1)); fi
        done
        d=$((d+diff))
fi



#Printing out the output
printf "$NAME,$EMAIL,$SLACK_UNAME,$BIOSTACK,$TWITTER,$d\n"
