#! /bin/bash
echo "Start --> ***************"
echo "Starting Params script to read user input"

read -p " Please enter your password: " user_pwd
echo " You entered value --> $user_pwd "
echo " Number of params sent = $# "
echo " Value of all the params entered: $*"

# loop through parameters
for param in $*
    do
        echo "$param"
    done

#  While loop
sum=0
while [ "$sum" -lt 1000 ]
do
    read -p "enter a score: " score
    sum=$(($sum+$score))
    echo "Score now is : $sum"
done

echo "*************** --> Finish"