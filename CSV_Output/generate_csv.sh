#!bin/bash
#this script writes output from all the programms to a csv file
#Ensure your output is in this order: name, email,slackusername, bistack, twitter handle, hamming distance
#Do not include prefixes for each output i.e name: Elon Musk. Just Elon Musk

#clone git repo
#generate csv file from all output of scripts


git clone https://github.com/mikemwanga/TeamMcCooke_HackBio2021_2.git

printf  "Name\tE-mail\tSlack_username\tBiostack\tTwitter_username\tHammingDist\n" > file.csv
 #create column names for the csv file and append script aoutputs

#Loop through the files and append output to the file.csv


cd TeamMcCooke_HackBio2021_2
for file in *; do
  if [[ $file == Elon.R ]]; then
    Rscript $file | paste -sd '\t' >> ../file.csv
    paste -sd '\n' ../file.csv
    
  elif [[ $file == mike.py ]]; then
    python3 $file | paste -sd '\t'  >> ../file.csv
    paste -sd '\n' ../file.csv
  
  elif [[ $file == Mercy.py ]]; then
    python3 $file | paste -sd '\t'  >> ../file.csv
    paste -sd '\n' ../file.csv  
    
#  elif [[ $file == <yourscriptname> ]]; then
#    <command to execute your script in bash> | paste -sd '\t'  >> ../file.csv
#    paste -sd '\n' ../file.csv
    
    
  fi
  
done
cd ../

rm -rf TeamMcCooke_HackBio2021_2
