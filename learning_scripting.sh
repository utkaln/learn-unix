#! /bin/bash
var_name=SampleFileName
echo "Today is November 8, 2021. And the config file used is --> $var_name "

if [ -d /var/log ]
then
    echo "found directory"
    file_name=$(ls /var/log)
    echo "The list of files in the log folder is --> $file_name"
else
    echo "No directory Found. Exiting..."
fi


