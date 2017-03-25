ave my current directory
MY_CWD=$(pwd)
cd /data
# clean/remove staging directory with files
rm project1/staging/*

# remove directories
rmdir project1/staging
rmdir project1

# Remove files and directories from HDFS
hdfs dfs -rm /user/w205/project1/*

# remove directories/subdirectories hospital_compare from HDFS
hdfs dfs -rmdir /user/w205/project1

# change directory back to current working directory
cd $MY_CWD

# clean exit
exit

