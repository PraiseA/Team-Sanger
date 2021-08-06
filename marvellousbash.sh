#!/usr/bin/env bash

#Defining variables

#Name
Name="Marvellous O. Oyebanjo"

#Email Address
Email_Address="marveloye@gmail.com"

#Slack Username
Slack_Username="@Marvellous"

#Biostack
Biostack="Genomics"

#Twitter Handle
Twitter_Handle="@MarvellousOye"
#program to calculate the Hamming distance between 2 strings
m=0
if [ ${#Slack_Username} -eq ${#Twitter_Handle} ]
then
        for (( i=0; i<${#Slack_Username}; i++ ))
        do
                if [ ${Slack_Username:$i:1} != ${Twitter_Handle:$i:1} ]; then
                        m=$((m+1)); fi
        done
#If slack has a greater length than twitter
elif [ ${#Slack_Username} -gt ${#Twitter_Handle} ]
then
        diff=$((${#Slack_Username}-${#Twitter_Handle}))
        for (( i=0; i<${#Twitter_Handle}; i++ ))
        do
                if [ ${Slack_Username:$i:1} != ${Twitter_Handle:$i:1} ]; then
                        m=$((m+1)); fi
        done
        m=$((m+diff))
#If twitter has a greater length than slack
elif [ ${#Twitter_Handle} -gt ${#Slack_Username} ]
then
        diff=$((${#Twitter_Handle}-${#Slack_Username}))
        for (( i=0; i<${#Slack_Username}; i++ ))
        do
                if [ ${Slack_Username:$i:1} != ${Twitter_Handle:$i:1} ]; then
                        m=$((m+1)); fi
        done
        m=$((m+diff))
fi
#Printing out the output
printf "$Name,$Email_Address,$Slack_Username,$Biostack,$Twitter_Handle,$m\n"
