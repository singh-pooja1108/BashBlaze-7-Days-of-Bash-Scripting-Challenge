#!/bin/bash

#Author : Pooja Singh
#Date   : 5-Aug-23
#Repo   : prajwalpd7
#purpose : 7 days bash script challange ---Day2.1 (Train with Shubham)

#Define a function named rotation_backup that manages the rotation of backups.
rotation_backup() {
backupAt=$1
total_backup_allowed=3

#Count the number of backup folders present in the specfied path 
backup_present_at_folder=$( ls  $backupAt | sort -V | wc -l )

#calculate the number of excess backup folders beyond the allowed limit.
backup_to_be_removed=$(($backup_present_at_folder - $total_backup_allowed ))

#If there are excess backup folders, proceed to remove them	
if [[ $backup_to_be_removed -gt 0 ]]; then

#Get the names of the folders to be deleted (Oldest backups)	
folder_to_be_deleted=$( ls  $backupAt | sort -V | head -n $backup_to_be_removed )

#Loop through the folders to be deleted and removed them
       for folder in $folder_to_be_deleted ;
           do
          sudo rm -r $backupAt/$folder
           done
fi
}

#Check if the script is run with at least one command-line argument.
if [[ $# -lt 1 ]]; then
        echo "Correct usage: ./<scriptname> <path_to_store_backup>"
       	exit 1
fi

#Source directory containing the files to be backed up.
src_dir=/home/ubuntu/tws-batch/BashBlaze-7-Days-of-Bash-Scripting-Challenge/Challenges/

#Target directory where backup will be stored.
tgt_dir=$1

#Generate a timestamp for the backup folder.
curr_time=$(date +%Y%m%d%h%M%S)
backup_dir="$tgt_dir/back_$curr_time"

#Create a compressed archive of the source directory
sudo tar -cvf $backup_dir.tar.gz $src_dir

#call the rotation_backup function to manage backup rotation.
rotation_backup $tgt_dir

#Check if the rotation_backup function was successful. 
if [ $? -eq 0 ]; then
        echo "Backup created successfully at: $tgt_dir"
fi


