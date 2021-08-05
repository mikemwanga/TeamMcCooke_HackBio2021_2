#!bin/bash
#this script writes output from all the programms to a csv file
#Ensure your output is in this order: name, email,slackusername, bistack, twitter handle, hamming distance
#Do not include prefixes for each output i.e name: Elon Musk. Just Elon Musk



#clone git repo
#generate csv file from all output of scripts

git clone https://github.com/mikemwanga/TeamMcCooke_HackBio2021.git

printf "Name\tE-mail\tSlack_username\tBiostack\tTwitter_username\tHammingDist\n" > TeamMcCooke_HackBio2021/file.csv #create column names for the csv file and append script aoutputs

Rscript Elon.R | paste -sd '\t' >> TeamMcCooke_HackBio2021/file.csv

paste -sd '\n' TeamMcCooke_HackBio2021/file.csv

python3 mike.py | paste -sd '\t'  >> TeamMcCooke_HackBio2021/file.csv

printf "\n" >> TeamMcCooke_HackBio2021/file.csv



#A loop

for file in *; do
  if [[ $file == Elon.R ]]; then
    Rscript $file | paste -sd '\t' >> TeamMcCooke_HackBio2021/file.csv
    paste -sd '\n' TeamMcCooke_HackBio2021/file.csv
    
  elif [[ $file == mike.py ]]; then
    python3 $file | paste -sd '\t'  >> TeamMcCooke_HackBio2021/file.csv
    paste -sd '\n' TeamMcCooke_HackBio2021/file.csv
    
  fi
  
done


#rm -rf TeamMcCooke_HackBio2021