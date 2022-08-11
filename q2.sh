#!bash/bin

cat /etc/shells | awk '/usr/ {print}' | cut -c 10-1000

