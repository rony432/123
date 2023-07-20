#!/bin/bash

mylink="https://raw.githubusercontent.com/yebekhe/TelegramV2rayCollector/main/sub/mix"
output_file="newsub.txt"
user_agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.5646.206 Safari/537.36"  # Replace "MyUserAgent/1.0" with your desired User-Agent string

# Use curl to fetch the contents of the URL, add User-Agent header, and grep to filter the lines
curl -s -A "$user_agent" "$mylink" | grep -E "www\.discordapp\.com|speedtest\.net" | sed G | awk -F '#' '{if (NF > 1) print $1"# real"; else print $0}' | grep -v "%2C" > "$output_file"

echo "Filtered lines with modifications have been saved to $output_file."
