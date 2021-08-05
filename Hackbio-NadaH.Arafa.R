#BioHack Task 1
#title:("Biohack Task") 

name = print("Nada Hussien Arafa") #name
email = print("nada.hussien73@gmail.com") #email
username = "@NadaHussienArafa" #slack: @user name 
biostack = print("Biotechnology") #biostack
twitter = "@Nada_Hussien_" #Twitter username 





#hamming distance

x = (username) #slack: @user name
y = (twitter) #Twitter username

#hamming_distance(x,y)

hamming_distance <- function(x,y){
  lenUser = nchar(x)
  lenTwitter = nchar(y)
  ham = 0
  add = 0
  if (lenUser != lenTwitter) {
    add = abs(lenUser - lenTwitter)
    i = 1
    while (i <= lenUser && lenUser <= lenTwitter) {
      if (substr(x,i,i) != substr(y,i,i)){
        ham = ham + 1
      }
      i = i+1
    }
  }
  else{
    i = 1
    while (i <= lenUser) {
      if (substr(x,i,i) != substr(y,i,i)){
        ham = ham + 1
      }
      i = i+1
    }
  }
  
  return (ham+add)
}
hamming_distance = hamming_distance(x, y)

#Printing variables on one line with "," as separation
cat(name,email,username,biostack ,twitter,hamming_distance,sep = ",")


