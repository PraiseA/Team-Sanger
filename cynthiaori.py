#!/usr/bin/python3


#Defining my variables

#My name
name="Cynthia Orinda"

#my email address
email="orinda.cynthia@gmail.com"

#Slack Username
s_uname="@Orinda"

#My preferred Biostack
biostack="Genomics&Transcriptomics"

#my twitter handle
twitter="@cynthia_orinda"

def hamming_distance(s_uname,twitter):
    count=0
    for i in range(len(s_uname)):
      if s_uname[i]!=twitter[i]:
       count +=1
#    return count
    if(len(s_uname)== len(twitter)):
          return count
    else:
       dif=len(twitter)-len(s_uname)
       count=0
       for i in range(len(s_uname)):
           if s_uname[i]!=twitter[i]:
               count +=1
    return count+dif
#print the output on a singleline but comma-separated
print(name,email,s_uname,biostack,twitter,hamming_distance(s_uname,twitter),sep=",")
