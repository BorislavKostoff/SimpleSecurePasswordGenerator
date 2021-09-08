#!/bin/bash
#This is a simple password generator for hard to crack passwords! Generate 5 differnet passwords with length of Your choice, so You can choose!

echo "Please enter the length of the password You need: "
read LENGTH

for p in $(seq 1 5);
do
	openssl rand -base64 48 | cut -c1-$LENGTH >> passwords.txt
done
echo "You may check passwords.txt now!"
