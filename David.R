#Task 1
name = "David Enoma"
email = "davidenoma@gmail.com"
username = "@david"
biostack = "Transcriptomics and Data Science"
twitter = "@davidenoma_"
hamming_distance=""

hamming_distance <- function(username,twitter){
  lenUser = nchar(username)
  lenTwitter = nchar(twitter)
  ham = 0
  add = 0
  if (lenUser != lenTwitter) {
    add = abs(lenUser - lenTwitter)
    i = 1
    while (i <= lenUser && lenUser <= lenTwitter) {
      if (substr(username,i,i) != substr(twitter,i,i)){
          ham = ham + 1
      }
      i = i+1
    }
  }
  else{
    i = 1
    while (i <= lenUser) {
      if (substr(username,i,i) != substr(twitter,i,i)){
        ham = ham + 1
      }
      i = i+1
    }
  }
  
  return (ham+add)
}
hamming_distance = hamming_distance(username, twitter)

message(paste(name,email,username,biostack,twitter,hamming_distance,sep=","))
