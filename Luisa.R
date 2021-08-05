## Script to print Personal Information in R

Name <- 'Luisa Criollo'
Email <- 'luisacriollo17@gmail.com'
Slack_username <- '@LuisaC'
Biostack <- 'Drug development'
Twitter_username <- '@Lu_317'


##Function to calculate
# Hamming distance

HammingDist <- function(Slack_username, Twitter_username){
  
  s <- as.character(Slack_username)
  t <- as.character(Twitter_username)
  
  length_s <- nchar(s) #Returns the length of the string
  length_t <- nchar(t)
  i<-0
  
  s_sub <- c()
  for (i in 1:length_s){
    s_sub[i] = substr(s, start=i, stop=i)
  }
  
  t_sub <- c()
  for (i in 1:length_t){
    t_sub[i] = substr(t, start=i, stop=i)
  }
  
  if (length_s == length_t)  {
    
    
    return(sum(s_sub != t_sub)) #Compare the strings and return the Hamming Distance
    
    
  }
}
  
  HammingDistance <- HammingDist(Slack_username, Twitter_username) #Save the Hamming distance's value
  
  cat(paste(Name,Email, Slack_username,Biostack,Twitter_username,HammingDistance, sep= "\n")) #Print the information
 
