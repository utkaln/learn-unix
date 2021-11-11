#! /bin/bash
echo "*************** | --> "
function useInputParams {
    echo "Starting Params script to read user input"
    read -p " Please enter your password: " user_pwd
    # assign the user input to variable user_pwd
    echo " You entered value --> $user_pwd "
    echo " Number of params sent = $# "
    echo " Value of all the params entered: $*"
}


# loop through parameters
function useFor {
    for param in $*
    do
        echo "$param"
    done
}

#  While loop
function useWhile {
    sum=0
    while [ "$sum" -lt 1000 ]
    do
        read -p "enter a score: " score
        sum=$(($sum+$score))
        echo "Score now is : $sum"
    done
}

function createFile() {
    touch $1
    if [ $2 == true ]
    then
        chmod 744 $1
    else
        chmod 700 $1
    fi
}

function listFiles {
    echo "List of files in this directory --> "
    ls -la
}


# to execute invoke a function name from above
createFile utkal_test.sh true 
listFiles

createFile utkal_test.txt false
listFiles

echo "*************** --> | "