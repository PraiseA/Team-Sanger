#HackBio projects

#task 1
# Write a script that prints your name, your email, your slack username and your biostack.
MyDetails = function(Name, Email, slack_username, biostack) {
  details = paste(
    "Hi! ",
    "My name is ",
    Name,
    " with the email ",
    Email,
    " and slack username ",
    slack_username,
    ". I am interested in ",
    biostack
  )
  print (details)
  }
MyDetails("Oluwatosin Orababa", "oluwatosinorababa@gmail.com", "@Oluwatosin", "microbial genomics")

