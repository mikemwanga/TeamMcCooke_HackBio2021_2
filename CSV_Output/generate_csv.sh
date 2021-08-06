#!bin/bash
#this script writes output from all the programms to a csv file
#Ensure your output is in this order: name, email,slackusername, bistack, twitter handle, hamming distance
#Do not include prefixes for each output i.e name: Elon Musk. Just Elon Musk
#clone git repo
#generate csv file from all output of scripts
#Ensure git, python3 perl and c++ are installed in your environent


git clone https://github.com/mikemwanga/TeamMcCooke_HackBio2021_2.git
printf  "Name\tE-mail\tSlack_username\tBiostack\tTwitter_username\tHammingDist\n" > file.csv

#create column names for the csv file and append script aoutputs


g++ ./TeamMcCooke_HackBio2021_2/Stage_0_OVI.cpp -o ovi


./ovi | paste -sd "\t" >> file.csv
python3 ./TeamMcCooke_HackBio2021_2/Mercy.py | paste -sd "\t" >> file.csv
Rscript ./TeamMcCooke_HackBio2021_2/Luisa.R | paste -sd "\t" >> file.csv
Rscript ./TeamMcCooke_HackBio2021_2/Temmykeji_HackBio_Assignment.R | paste -sd "\t" >> file.csv
Rscript ./TeamMcCooke_HackBio2021_2/nandy_first_assignment.R | paste -sd "\t" >> file.csv
python3 ./TeamMcCooke_HackBio2021_2/mike.py | paste -sd "\t" >> file.csv
perl ./TeamMcCooke_HackBio2021_2/Gautami_perl.pl | paste -sd "\t" >> file.csv


rm ovi
rm -rf TeamMcCooke_HackBio2021_2
