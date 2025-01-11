# OSINT Tool

## Overview
This tool is a beginner-friendly Bash script designed to help users gather Open-Source Intelligence (OSINT) about domains or IP addresses. It utilizes the powerful command-line utilities `whois`, `dig`, and `nslookup` to fetch information such as domain registration details, DNS records, and reverse lookups for IP addresses.

---

## Features
1. **Domain and IP Validation**: Ensures user inputs are valid domains or IP addresses.
2. **whois**: Retrieves domain registration and IP ownership information.
3. **dig**: Queries DNS records such as A, MX, TXT, NS, and CNAME for domains and IP addresses.
4. **nslookup**: Provides domain-to-IP mapping, mail server details, and name server information.
5. **User-Friendly Interface**: Allows users to select operations and input data interactively.

---

## Prerequisites
- A Linux or macOS system with Bash installed.
- Installed utilities: `whois`, `dig`, and `nslookup`.
  - Use the following commands to install them if they are not already available:
    ```bash
    sudo apt install whois dnsutils -y   # For Ubuntu/Debian
    sudo yum install whois bind-utils -y  # For CentOS/RHEL
    ```

---

## How to Use
### 1. Clone the Tool
Download the script files or clone the repository to your local system.

### 2. Ensure Permissions
Grant execution permissions to both scripts:
```bash
chmod +x ip_domain_validate.sh
chmod +x whois_dig_nslookup.sh
```

### 3. Run the Tool
Start the main script:
```bash
./whois_dig_nslookup.sh
```

### 4. Follow the Instructions
- **Step 1**: Choose one of the following options:
  - `1`: Use `whois`
  - `2`: Use `dig`
  - `3`: Use `nslookup`
- **Step 2**: Select whether you want to analyze a domain or an IP address.
- **Step 3**: Enter the domain name or IP address when prompted.

### Example Outputs
#### For `whois`:
- Displays registration details like owner information, registrar, DNS servers, and more.

#### For `dig`:
- Outputs DNS records such as A, MX, TXT, NS, and CNAME.

#### For `nslookup`:
- Shows domain-to-IP mappings, mail server details, and name server records.

---

## Script Descriptions
### 1. `ip_domain_validate.sh`
This script validates the user input to ensure it is a correctly formatted domain name or IP address.
- **Domain Validation**:
  - Accepts domains like `example.com`, `sub.example.org`, etc.
  - Uses a regular expression to verify the format.
- **IP Address Validation**:
  - Accepts IPv4 addresses like `192.168.0.1`.
  - Ensures each segment is between 0-255.

### 2. `whois_dig_nslookup.sh`
This is the main script that:
- Prompts the user to choose an OSINT tool (`whois`, `dig`, or `nslookup`).
- Sources the `ip_domain_validate.sh` script for input validation.
- Executes the selected tool based on the validated input.
- Provides helpful explanations about each tool for beginners.

---

## Troubleshooting
1. **Command Not Found**: Ensure `whois`, `dig`, and `nslookup` are installed on your system.
2. **Invalid Input**: Ensure you provide a properly formatted domain name or IP address.
3. **Permission Denied**: Check if the scripts have executable permissions (`chmod +x`).

---

## Future Enhancements
- Add support for more OSINT tools like `traceroute` or `nmap`.
- Generate detailed reports in a file format (e.g., TXT or CSV).
- Include IPv6 compatibility.

---

## License
This tool is open-source and free to use. Contributions are welcome to improve its functionality.

---

## Acknowledgments
Special thanks to the creators and maintainers of the `whois`, `dig`, and `nslookup` utilities for enabling such powerful OSINT capabilities.

