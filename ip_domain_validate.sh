#!/bin/bash

domain_check() {
	read -p "Enter a domain: " domain
	
	#Domain regex
	domain_regex='^[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(\.[a-zA-Z]{2,})+$'

	if [[ $domain =~ $domain_regex ]]; then 
		echo "Valid domain"
		echo $domain
	else
		echo "Invalid domain"
		exit 1
	fi
}

ip_check() {
	read -p "Enter an IP address: " ip 
	
	#IP address regex
	ip_regex='^(([0-9]{1,2}|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]{1,2}|1[0-9]{2}|2[0-4][0-9]|25[0-5])$'

	if [[ $ip =~ $ip_regex ]]; then
		echo "Valid IP address"
		echo $ip
	else
		echo "Invalid IP address"
		exit 1
	fi
}
