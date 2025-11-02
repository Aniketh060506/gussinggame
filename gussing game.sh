#!/usr/bin/env bash
# File: guessinggame.sh

function get_file_count {
  echo $(ls -1 | wc -l)
}

echo "Welcome to the Guessing Game!"
echo "Try to guess how many files are in the current directory."

correct_count=$(get_file_count)
user_guess=-1

while [[ $user_guess -ne $correct_count ]]
do
  echo
  read -p "Enter your guess: " user_guess

  if [[ $user_guess -lt $correct_count ]]
  then
    echo "Too low! Try again."
  elif [[ $user_guess -gt $correct_count ]]
  then
    echo "Too high! Try again."
  else
    echo "🎉 Congratulations! You guessed right!"
  fi
done
