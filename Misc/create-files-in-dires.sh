#!/bin/bash

###############################################################################
# Author: Sudheer Kumar P
# What: A script to create to a file recurisvely inside the all the directories
# Why: A requirement to create same files in multiple directories
###############################################################################

# Getting all directories in the current directory (non-recursive)
folders=$(ls -d */ | awk '{ print $1 }' | sed 's/\/\///g')

# Using a for loop to create a README.md file inside all the directories
# Using touch command to create a file

for folder in $folders; do
  # Skip the current directory itself (.)
  if [[ "$folder" != "." ]]; then
    # Check if the file already exists before creating it
    if [[ ! -f "$folder/README.md" ]]; then
      touch "$folder/README.md"
    else
      echo "README.md already exists in $folder"
    fi
  fi
done