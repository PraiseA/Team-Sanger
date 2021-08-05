#Defining my variables

#Name
Name = "Ernesto O. Dibia"

#Email Address
Email_Address = "dibiaernesto97@gmail.com"

#Slack Username
Slack_Username = "@Ernesto"

#Biostack
Biostack = "Genomics"

#Twitter
Twitter = "@DibiaErnesto"

#To calculate the Hamming distance, h, between the slack username and twitter handle.
#Determine that the value of Hamming distance, h
h=0

#Check if slack username is longer than or equal to twitter handle

if len(Slack_Username) >= len(Twitter):
    #Peruse letters of the slack username and twitter for possible mismatches
	for i in range(len(Slack_Username)):
    #In instances where the shorter stringis out of range with the indexing
		try:
    #If the index letter for slack username and twitter are different, increase the value of h by one
			if Slack_Username[i].lower() !=Twitter[i].lower():
    				h=h+1
		except:
    #When the shorter string is out of range, still increase the h value by one
    			h=h+1

    #This section runs in the event that the twitter handle is longer than the slack username.
    #The other parts of the code applies a similar defined approach.
elif len(Twitter) > len(Slack_Username):
	for i in range(len(Twitter)):
		try:
			if Twitter[i].lower() != Slack_Username[i].lower():
				h=h+1
		except:
			h=h+1
            #print(h)

#Printing each output on a new line
print ("{}\n{}\n{}\n{}\n{}\n{}".format(Name, Email_Address, Slack_Username, Biostack, Twitter, h))
