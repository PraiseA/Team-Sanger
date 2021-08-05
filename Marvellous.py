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

#Calculate the Hamming distance, d, between the twitter handle and slack username

#Initialise the value of Hamming distance, m
m=0

#Check if slack username is longer than or equal to twitter handle
if len(Slack_Username) >= len(Twitter_Handle):
    #Iterate over the letters of the slack username and check letter per letter whether it mismatches
    for i in range(len(Slack_Username)):
        #This is to catch instances where the shorter string falls out of range with the indexing
        try:
                #If the index letter for slack username and twitter are different, increase the value of d by one
                if Slack_Username[i].lower() != Twitter_Handle[i].lower():
                        m=m+1
        except:
                #When the shorter string falls out of range, still increase the value d by one for each instance
                m=m+1

#This portion will only run in case its twitter handle is longer than the slack username.
#The rest of the code applies a similar approach as defined above.
elif len(Twitter_Handle) > len(Slack_Username):
    for i in range(len(Twitter_Handle)):
            try:
                    if Twitter_Handle[i].lower() != Slack_Username[i].lower():
                            m=m+1
            except:
                    m=m+1
#print(d)

#Print the output on the same line but comma-separated
print("{},{},{},{},{},{}".format(Name, Email_Address, Slack_Username, Biostack, Twitter_Handle, m))

