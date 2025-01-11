#!/bin/bash

echo " "
echo "Choose one option"
echo "1. whois"
echo "2. dig"
echo "3. nslookup"
echo " "
read -p "Enter your choice (1/2/3): " choice

source ip_domain_validate.sh

if [[ choice -eq 1 ]]; then
	echo " "
	echo "whois is a command-line utility used to query information about domain names, IP addresses, or autonomous systems from public databases. It retrieves details like:"
	echo "1. Domain registration data (owner, registrar, registration dates)"
	echo "2. Contact information (admin, technical, and billing contacts)"
	echo "3. DNS server details"
	echo " "
	echo "Choose one option"
	echo "1. IP"
	echo "2. domain"
	read -p "Enter your choice (1/2): " second_choice
	if [[ second_choice -eq 1 ]]; then
		ip_check
		whois $ip 
	elif [[ second_choice -eq 2 ]]; then 
		domain_check 
		whois $domain
	else 
		echo "Invalid Choice"
		exit 1
	fi

elif [[ choice -eq 2 ]]; then 
	echo " "
	echo "dig (Domain Information Groper) is a command-line tool used for querying DNS (Domain Name System) servers. It retrieves information about domain names, such as:"
	echo "1. IP addresses (A or AAAA records)"
	echo "2. Mail servers (MX records)"
	echo "3. Name servers (NS records)"
	echo "4. Other DNS records like CNAME, TXT, or SOA"
	echo " "
	echo "choose one option"
	echo "1. IP"
        echo "2. domain"
        read -p "Enter your choice (1/2): " second_choice
	options=("A", "MX", "TXT", "NS", "CNAME")
     if [[ second_choice -eq 1 ]]; then
                ip_check
                for type in "${options[@]}"; do 
			dig $ip $type
		done
        elif [[ second_choice -eq 2 ]]; then 
                domain_check 
                for type in "${options[@]}"; do 
			dig $domain $type
		done
        else 
                echo "Invalid Choice"
                exit 1
	fi

elif [[ choice -eq 3 ]]; then
	echo " "
	echo "nslookup (Name Server Lookup) is a command-line tool used to query DNS records for a domain or IP address. It helps retrieve information like:"
	echo "1. Domain-to-IP mappings (A/AAAA records)"
	echo "2. Mail server details (MX records)"
	echo "3. Name server details (NS records)"
	echo " "
	echo "Choose one option"
	echo "1. IP"
        echo "2. domain"
        read -p "Enter your choice (1/2): " second_choice
	if [[ second_choice -eq 1 ]]; then
		ip_check
		nslookup $ip
	elif [[ second_choice -eq 2 ]]; then 
		domain_check
		nslookup $domain
	else
		echo "Invalid Choice"
		exit 1
	fi

else
	echo "Invalid Choice"
	exit 1

fi
