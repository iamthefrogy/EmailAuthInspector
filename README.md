# EmailAuthInspector

![image](https://github.com/iamthefrogy/EmailAuthInspector/assets/8291014/f5342183-0797-4f96-91cd-b6e3f0d3aea8)

  <a href="https://github.com/iamthefrogy/frogy"><img src="https://user-images.githubusercontent.com/8291014/148647453-9328388b-1d04-4f76-99f4-c1f8d6aa8929.jpg" alt="frogy" height=230px></a>

EmailAuthInspector is a bash script designed to help you quickly check the DMARC, SPF, and DKIM records for a list of domains and subdomains. This tool is useful for ensuring email authentication policies are correctly configured to prevent phishing and spoofing attacks.

## Features

- Check DMARC records for root domains and subdomains
- Check SPF records for root domains and subdomains
- Check DKIM records for root domains and subdomains
- Output results to the console
- Save results to a CSV file

## Prerequisites

Ensure you have the following installed on your system:
- `dig` (part of the `dnsutils` package on Debian-based systems)

You can install `dig` using the following command:
```bash
sudo apt-get install dnsutils
```
## Usage

1. Clone the repository:
```bash
git clone https://github.com/yourusername/EmailAuthInspector.git
cd EmailAuthInspector
```
2. Make the script executable:

```bash
chmod +x emailauthinspector.sh
```
3. Create a domains.txt file with the list of domains and subdomains you want to check. Each domain or subdomain should be on a new line:
```bash
tesla.com
mirosoft.com
subdomain.microsoft.com
etc.
```

4. Run the script:
```bash
./emailauthinspector.sh
```

5. View the results:
The results will be printed to the console.
A CSV report named dns_records_report.csv will be generated in the same directory.
