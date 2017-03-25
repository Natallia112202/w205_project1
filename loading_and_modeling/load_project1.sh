#!/bin/bash
# saving current directory
MY_CWD=$(pwd)
cd /data
#creating staging directory/start from home directory (~)
mkdir project1
mkdir project1/staging

# changing to staging directory
cd project1/staging

# getting the file from website(...),naming the file
MY_URL1="https://data.consumerfinance.gov/api/views/s6ew-h6mp/rows.csv"

wget "$MY_URL1" -O consumer_complaints.csv


# creating directory <project1> on HDFS 
hdfs dfs -mkdir /user/w205/project1

# putting the file (consumer_complaints.csv) into <project1>  directory 

hdfs dfs -put consumer_complaints.csv /user/w205/project1

# Change directory to original CWD
cd $MY_CWD
# perform exit
exit
