#!/usr/bin/env bash

if ! [ -x "$(command -v curl)" ] 
then
	echo "Curl not installed!!!!"
  exit 1
fi

HELLO_TEXT="HELLO DASCHE!!!"
WEATHER_TEXT="Displaying Weather in"

printf "%s\n" "$HELLO_TEXT"
sleep 1
printf "%s%s%d\r" "$WEATHER_TEXT" "..." 3
sleep 2
printf "%s%s%d\r" "$WEATHER_TEXT" "..." 2
sleep 1
printf "%s%s%d\n" "$WEATHER_TEXT" "..." 1
sleep 1
clear

curl wttr.in
