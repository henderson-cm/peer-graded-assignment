#!/usr/bin/env bash
# File: guessinggame.sh

# Create a function to determine the number of files in the directory. 

function nof {
	number=$(ls -l | egrep -c '^-')
}

# Ask for user guess, compare it to the number of files, and prompt user to try 
# again if their guess is incorrect. 

nof

guess=-1

while [[ $guess -ne $number ]]
do
	echo "How many files are in the current directory? Type a number and press Enter:"
	read guess

	if [[ $guess -eq $number ]]
	then
		echo "You guessed $guess. That is correct. Congratulations!"
	elif [[ $guess -gt $number ]]  
	then
		echo "You guessed $guess. That is too high. Try again!"
	elif [[ $guess -lt $number ]]
	then
		echo "You guessed $guess. That is too low. Try again!"
	fi
	let guess=$guess
done


