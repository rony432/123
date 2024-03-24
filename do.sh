#!/bin/bash

input_file="input.mp4"

for ((i=1; i<=1; i++)); do
    output_file="out.mp4"
    ffmpeg -i "$input_file" -hide_banner -loglevel warning -c:v libx264 -c:a aac -vf "scale=1280:720" "$output_file" 
    echo $i
    sleep 5
done



