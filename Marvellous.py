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

m=0

if len(Slack_Username) >= len(Twitter_Handle):
    for i in range(len(Slack_Username)):
        try:
            if Slack_Username[i].lower() != Twitter_Handle[i].lower():
                m=m+1
        except:
                m=m+1

elif len(Twitter_Handle) > len(Slack_Username):
    for i in range(len(Twitter_Handle)):
            try:
                    if Twitter_Handle[i].lower() != Slack_Username[i].lower():
                            m=m+1
            except:
                    m=m+1
#print(d)
                    
#print output
print("{},{},{},{},{},{}".format(Name, Email_Address, Slack_Username, Biostack, Twitter_Handle, m))
