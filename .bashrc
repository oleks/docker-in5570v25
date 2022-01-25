# Show IP address in the prompt

MYIP=$(ip addr show eth0 | grep "inet\b" | awk '{print $2}' | cut -d/ -f1)
PS1="\[\033[01;35m\]\h@"$MYIP" \w\[\033[00m\]\n$ ";
