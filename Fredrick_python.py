#!/usr/bin/env python3


#Defining my variables

#My name
name="Fredrick E. Kakembo"

#my email address
email="kakembofredrick@gmail.com"

#Slack Username
s_uname="@Fredrick"

#My preferred Biostack
biostack="Genomics"

#Twitter handle
twitter="@FredricoKakembo"

#Calculate the Hamming distance, d between the twitter handle and slack username

#Initialize the value of Hamming Distance, d
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
#print(d)

#Print the output on the same line but comma-separated
print("%s,%s,%s,%s,%s,%s"% (name,email,s_uname,biostack,twitter,d))


