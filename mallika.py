
#Defining my variables

#name
name="Mallika Gakhar"

#email address
email="malika.21313@gmail.com"

#Slack username
slack_uname="@Mallika"

#Biostack
biostack="Genomics"

#twitter handle
twitter="@mallika"

#calculate hamming distance
def hamming_distance(slack_uname,twitter):
    count=0
    for i in range(len(slack_uname)):
      if slack_uname[i]!=twitter[i]:
       count +=1
    return count
    if(len(slack_uname)== len(twitter)):
          return count
    else:
       count=0
       for i in range(len(slack_uname)):
           if slack_uname[i]!=twitter[i]:
               count +=1
    return count

print(name,email,slack_uname,biostack,twitter, hamming_distance(slack_uname,twitter), sep=',')
