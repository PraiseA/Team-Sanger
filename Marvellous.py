#!/usr/bin/python3


#Defining my variables


#Name
Name = "Marvellous O. Oyebanjo"


#Email Address
Email_Address = "marveloye@gmail.com"


#Slack Username
Slack_Username = "@Marvellous"


#Biostack
Biostack = "Genomics"

#Twitter Handle
Twitter_Handle = "@MarvellousOye"

# Python3 program to find hamming distance b/w two string

# Function to calculate Hamming distance
def hammingDist (str1, str2):
    i = 0
    count = 0

    while(i < len(str1)):
        if(str1[i] != str2[i]):
            count += 1
        i += 1
    return count

# Driver code
str1 = "MarvellousOye"
str2 = "MarvellousOye"

# function call
print("{},{},{},{},{},{}".format(Name, Email_Address, Slack_Username, Biostack, Twitter_Handle, hammingDist (str1, str2)))
