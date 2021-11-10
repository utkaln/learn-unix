#! /bin/bash
clear
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

echo "***************************"
param_first=$1
param_second=$2

if [ "$param_first" == "abcd" ]
then
    echo "Inside first if block --> $param_first"
elif [ "$param_second" == "abcd" ]
then 
    echo "Inside el if with second param --> $param_second"
else
    echo "In the else block"
fi

echo "***************************"

