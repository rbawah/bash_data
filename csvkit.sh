#!/usr/bin/bash

# using curl to download
curl https://ensf612.com/datafile.txt
curl -O https://ensf612.com/datafile.txt # keep original filename
curl -o rename.txt https://ensf612.com/datafile.txt # keep original filename

# Downloading with auth
# Set your credentials as environment variables in your terminal (not in the script)
export KAGGLE_USERNAME="your_username"
export KAGGLE_KEY="your_api_key"

# Download a dataset (replace with actual dataset path)
curl -L -u "$KAGGLE_USERNAME:$KAGGLE_KEY" \
  "https://www.kaggle.com/api/v1/datasets/download/owner/dataset-name" \
  -o dataset.zip

# Extract the CSV
unzip dataset.zip

# using wget
wget https://ensf612.com/datafile.txt

# download list of files, iteratively
wget -i file_list.txt

# files.txt
# file1.csv
# file2.xlsx


# csvkit
csvlook sales.csv
in2csv filepath.xlsx > newfilepath.csv
in2csv filepath.xlsx | csvlook
in2csv -n filepath.xlsx # print out sheets names

csvcut -c "Store","Temperature","Unemployment","Region" tempFile.csv #| csvstat
csvcut -c 1,2-4 tempFile.csv # filter by column position

csvgrep -c "column_name" -m column_value file.csv
csvgrep -c 8 -m column_value file.csv



