#!/bin/bash
#write something
echo 'string'

#assign a variable
var='a variable'

#print a variable
echo $var

#if statement

test=1

if [ $test -eq 1 ];then
	echo "this is an if statement"
	echo "test equals 1"
fi

#if statement with && (and)

test2=2
if [ $test -eq 1 ] && [ $test2 -eq 2 ];then
	echo 'this is an if statement using && (&&)'
fi

#if statement with || (or)

if [ $test -eq 2 ] || [ $test2 -eq 2 ];then
	echo 'this is an if statement using || (or)'
fi

#while loop

test3=1
while [ $test3 -lt 4 ];do
	echo $test3
	test3=$(($test3+1))
done

#foreach loop

items=('word1' 'word2' 'word3')
for item in ${items[@]};do
	echo $item
done

#adding to an array

items+=('word4')
for item in ${items[@]};do
	echo $item
done

#creating and using a function
function test_function
{
echo 'this is a test function'
}

#calling the function

test_function

#reading information from a file

file='./test.csv'

while IFS= read -r line
do
	echo "$line"
done < $file

#using a csv
INPUT_FILE='./test.csv'
while IFS=',' read -r col1 col2 col3 col4 col5
do
	 echo "Name: $col1"
	 echo "Number: $col2"
	 echo "Street Address: $col3"
	 echo "State: $col4"
	 echo "Zip: $col5"
done < $INPUT_FILE
