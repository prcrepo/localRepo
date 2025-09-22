#!/bin/bash
<< comments
# This is basic comamnds using variables

echo "Hi my name is ganesh"
echo "hello ganesh"



# print messafe using variables 

name="Ganesh "
echo "My name is $name"
echo "hello $name"


# read variables 


echo "Enter Your name"
read name
echo "My Name is $name"
echo "hello $name"


# If else condition


echo "Enter Your Marks"
read marks
if [ $marks -ge 90 ] ;then
	echo "Your Grade Is A"
elif [ $marks -ge 75 ] && [ $marks -le 89]; then
	echo "Your grade Is B"
elif [ $marks -ge 50 ] && [ $marks -le 74]; then
	echo "Your Grade is C"
else
	echo "Your Grade is D"
fi


# loops 
# for loop
   

 for i in 1 2 3 4 5 
 do
	 echo" Number is $i"
 done



	for ((i=1; i<=10; i++))
	do
		echo "number is : $i"
	done
  # print reverse manner numbers 



for (( i=99; i>=3; i--))
do
	echo "number : $i"
done


# while loop

count=1

while [ $count -le 5 ]
do 
	echo "Count: $count"
	count=$((count+1))
done




# Functions
   
ur_name() {

echo "Enter Your name"
read name
echo "My Name is $name"
echo "hello $name"
}

#calling Function
ur_name

comments


ur_grade() {	

echo "Enter Your Marks"
read marks
if [ $marks -ge 90 ] ;then
        echo "Your Grade Is A"
elif [ $marks -ge 75 ] ; then
        echo "Your grade Is B"
elif [ $marks -ge 50 ] ; then
        echo "Your Grade is C"
else
        echo "Your Grade is D"
fi
}

# calling function 

ur_grade




















