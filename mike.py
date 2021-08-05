#!bin/python3
#Script to print details

name = "Mike Mwanga"
email ="mmwanga@icipe.com"
Slack_username = "@Mike"
biostack = "DataScience"
Twitter_username = "@ItsMwanga"


#Function to calculate
# Hamming distance

def hamming_distance(x,y):
  global count
  
  x = x[1:] #since @ is the first character and should not be used to calculate hammings distance
  y = y[1:]
  i = 0
  
   
  if len(x) == len(y):
    return sum(v1 != v2 for v1, v2 in zip(x, y))
   
  elif len(x) < len(y):
    count = 0
    while(i < len(x)):
        if(x[i] != y[i]):
            count += 1
        i += 1
    count = count + (len(y)-len(x))
   
  elif len(x) > len(y):
    count = 0
    while(i < len(y)):
        if(y[i] != x[i]):
            count += 1
        i += 1
    count = count + (len(x)-len(y))
     
 
hamming_distance(Slack_username, Twitter_username)

print(name + "\n" + email +"\n"  + Slack_username +"\n"  + biostack + "\n" + Twitter_username + "\n" + str(count))

