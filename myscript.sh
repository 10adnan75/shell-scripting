#! /usr/bin/bash

# ECHO
echo Hello World!

# VARIABLES
NAME="Adnan Shaikh"
echo "My name is ${NAME}"

# INPUT
read -p "Enter your name: " INPUT
echo "Hello $INPUT, nice to meet you!"

# IF
if [ "$NAME" == "Adnan" ]
then
    echo "Your name is Adnan"
fi

# IF-ELSE
if [ "$NAME" == "Adnan" ]
then
    echo "Your name is Adnan"
else
    echo "Your name is NOT Adnan"
fi

read -p "Enter number: " N
if [ $N == 7 ]
then
    echo "CR7"
else 
    echo "LM10"
fi

# ELIF
if [ "$NAME" == "Adnan" ]
then 
    echo "Your name is Adnan"
elif [ "$NAME" == "Adnan Shaikh" ]
then
    echo "Your name is Adnan Shaikh"
else
    echo "Your name is NOT Adnan"
fi

# COMPARISONS
NUM1=3
NUM2=5
if [ "$NUM1" -gt "$NUM2" ]
then
    echo "$NUM1 > $NUM2"
else
    echo "$NUM1 < $NUM2"
fi

# FILES
FILE1="cr7.txt"
FILE2="test.txt"
if [ -e "$FILE1" ]
then
    echo "$FILE1 exists"
else 
    echo "$FILE1 does NOT exist"
fi

if [ -f "$FILE2" ]
then
    echo "$FILE2 is a file"
else 
    echo "$FILE2 is NOT a file"
fi

# CASES
read -p "Are you 18 or over? (Y/N): " ANSWER
case "$ANSWER" in 
    [yY] | [yY][eE][sS])
        echo "You're eligible for voting :)"
        ;;
    [nN] | [nN][oO])
        echo "Sorry, you're not eligible for voting"
        ;;
    *)
        echo "Please enter y/yes or n/no"
        ;;
esac

# FOR
NAMES="Ronaldo Messi Neymar"
for NAME in $NAMES
    do 
        echo "Hello $NAME"
done

# FOR LOOP TO RENAME FILES
FILES=$(ls *.txt)
NEW="new"
for FILE in $FILES
    do
        echo "Renaming $FILE to new-$FILE"
        mv $FILE $NEW-$FILE
done

# WHILE
LINE=1
while read -r CURRENT_LINE
    do
        echo "$LINE: $CURRENT_LINE"
        ((LINE++))
done < "./cr7.txt"

# FUNCTION
function sayHello() {
    echo "Hello World!"
}

sayHello 

# PARAMETERS
function sayHelloAdnan() {
    echo "Hello $1!"
}

sayHelloAdnan "Adnan"

function getSum() {
    SUM=$(($1+$2))
    echo "$SUM"
}

getSum 6 9

# LINUX
mkdir hello
touch "hello/world.txt"
echo "Hello World" >> "hello/world.txt"
echo Created hello/world.txt
