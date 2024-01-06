#!/bin/bash

pass="lemperlemes"

echo "Welcome to encrypt decrypt! :D"
echo "What do you want to do?"
echo "1. Encrypt Text"
echo "2. Decrypt Text"

read -p ">> " user_choice

if [ $user_choice == 1 ]; then
	echo "Input your text"
	read -p ">> " plain_text
	ct=$(echo -n "$plain_text" | openssl enc -aes-256-cbc -a -iter 12345 -salt -pass "pass:$pass")
	echo "Your encrypted text: $ct"
elif [ $user_choice == 2 ]; then
	echo "Input your cipher text"
	read -p ">> " cipher_text
	echo "$cipher_text" > dec.txt
	dct=$(openssl enc -d -aes-256-cbc -a -iter 12345 -salt -pass "pass:$pass" -in dec.txt)
	echo "Decrypted text: $dct"
	rm dec.txt
else 
	echo "Pleas input between 1 and 2!"
fi
