#Defining my variables

Name="Oluwatosin Qawiyy ORABABA"
Email="oluwatosinorababa@gmail.com"
Slack_username="@Toxhin"
Biostack="Genomics"
Twitter_handle="@Horabz"
hamming_distance= ""

#Calculate hamming distance
hamming_distance <- function(slack_username,Twitter_handle){
  lenSlack = nchar(slack_username)
  lenTwitter = nchar(Twitter_handle)
  ham = 0
  add = 0
  if (lenSlack != lenTwitter) {
    add = abs(lenSlack - lenTwitter)
    i = 1
    while (i <= lenSlack && lenSlack <= lenTwitter) {
      if (substr(Slack_username,i,i) != substr(Twitter_handle,i,i)){
        ham = ham + 1
      }
      i = i+1
    }
  }
  else{
    i = 1
    while (i <= lenSlack) {
      if (substr(Slack_username,i,i) != substr(Twitter_handle,i,i)){
        ham = ham + 1
      }
      i = i+1
    }
  }
  
  return (ham+add)
}
hamming_distance = hamming_distance(Slack_username, Twitter_handle)


#Print variables on same line with comma separation
cat(Name, Email, Slack_username, Biostack, Twitter_handle, hamming_distance,'\n', sep=",")
