#!/usr/bin/env bash

if ! [ -x "$(command -v curl)" ] 
then
	echo "Curl not installed!!!!"
  exit 1
fi

clear

HELLO_TEXT="HELLO DASCHE!!!"
WAIT_TEXT="Displaying Weather and Crypto info in"

printf "%s\n" "$HELLO_TEXT"
sleep 1
printf "%s%s%d\r" "$WAIT_TEXT" "..." 3
sleep 1
printf "%s%s%d\r" "$WAIT_TEXT" "..." 2
sleep 1
printf "%s%s%d\n" "$WAIT_TEXT" "..." 1
sleep 1
clear

curl wttr.in
printf "\n"
curl rate.sx
