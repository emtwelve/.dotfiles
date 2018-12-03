
printf "Linux mem used: "; free -h | awk '/^Mem:/ {print $3 " out of ", $2 }'

printf "Linux CPU temp: "; sensors | awk '/^temp1/ {print $2}'

printf "Linux top ten:\n"; ps axch -o cmd:10,%mem --sort=-%mem | head

printf "Windows top ten:\n"; tasklist.exe /nh | sed s/,// | sort -k5 -nr | head
