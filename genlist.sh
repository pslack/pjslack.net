#!/bin/bash
find . -name \*.mp3  > mp3list.data
echo "playlist = [" > mp3list.json

while read line
do

url=`echo "$line" | sed -e 's/\.\//http:\/\/pjslack\.net\//g'` 
echo "{\"title\":\"\",\"url\":\"$url\"}," >> mp3list.json
	
done < mp3list.data

echo "];" >> mp3list.json
