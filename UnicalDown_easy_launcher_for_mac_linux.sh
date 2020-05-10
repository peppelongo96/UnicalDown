#!/bin/bash

# Put your settings in place of the dots
# Remember! Assignment is space-sensitive!
 
unicaldown_folder_path=...
fiscal_code=...
urls_file_path="..."
output_folder_path="..."
quality_number=...

cd $unicaldown_folder_path
node unicaldown.js -u $fiscal_code -f $urls_file_path -o $output_folder_path -q $quality_number
echo
read -n 1 -s -r -p "Press any key to terminate . . ."
