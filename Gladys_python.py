#!/usr/bin/env python3

#Defining my variables

#Name
Name = "Gladys Rotich"

#Email address
Email_address = "gladysjerono86@gmail.com"

#Slack username
Slack_username = "@Gladys"

#Preferred biostack
Biostack = "Genomics, Data Science"

#Twitter handle
Twitter="@jerono7_gladys"

#Finding the hamming distance
def hammingDist(Slack_username,Twitter):
    i=0
    count=0
    while (i<len(Slack_username)):
        count +=1
        i +=1
    return count
hammingDistance=hammingDist(Slack_username,Twitter)

#Printing  comma separated strings
print("{},{},{},{},{},{}".format(Name,Email_address,Slack_username,Biostack,Twitter,hammingDistance))
