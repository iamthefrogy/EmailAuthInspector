# EmailAuthInspector

<h1 align="center">
  <img src="https://github.com/iamthefrogy/EmailAuthInspector/assets/8291014/2184b436-59c4-47e2-ab90-02ad078f3e54" alt="EmailAuthInspector Logo" width="200" height="200">
</h1>
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

## Usage

- 𝗘𝗺𝗮𝗶𝗹 𝗦𝗲𝗰𝘂𝗿𝗶𝘁𝘆 𝗔𝘂𝗱𝗶𝘁𝘀: Quickly scan multiple domains to verify DMARC, SPF, and DKIM records.
- 𝗠𝗮𝗻𝗮𝗴𝗲𝗱 𝗦𝗲𝗿𝘃𝗶𝗰𝗲 𝗣𝗿𝗼𝘃𝗶𝗱𝗲𝗿𝘀 (𝗠𝗦𝗣𝘀): Perform bulk email authentication checks for multiple client domains.
- 𝗗𝗼𝗺𝗮𝗶𝗻 𝗣𝗼𝗿𝘁𝗳𝗼𝗹𝗶𝗼 𝗠𝗮𝗻𝗮𝗴𝗲𝗺𝗲𝗻𝘁: Ensure secure email configurations across a large portfolio of domains.
- 𝗣𝗿𝗲-𝗔𝗰𝗾𝘂𝗶𝘀𝗶𝘁𝗶𝗼𝗻 𝗗𝘂𝗲 𝗗𝗶𝗹𝗶𝗴𝗲𝗻𝗰𝗲: Assess email security posture during mergers and acquisitions.
- 𝗣𝗵𝗶𝘀𝗵𝗶𝗻𝗴 𝗔𝘁𝘁𝗮𝗰𝗸 𝗣𝗿𝗲𝘃𝗲𝗻𝘁𝗶𝗼𝗻: Prevent domain spoofing by validating email authentication records.
- 𝗖𝗼𝗺𝗽𝗹𝗶𝗮𝗻𝗰𝗲 𝗮𝗻𝗱 𝗥𝗲𝗴𝘂𝗹𝗮𝘁𝗼𝗿𝘆 𝗥𝗲𝗾𝘂𝗶𝗿𝗲𝗺𝗲𝗻𝘁𝘀: Verify email authentication for regulatory compliance.
- 𝗖𝗼𝗻𝘁𝗶𝗻𝘂𝗼𝘂𝘀 𝗠𝗼𝗻𝗶𝘁𝗼𝗿𝗶𝗻𝗴: Automate periodic checks of DMARC, SPF, and DKIM records.
- 𝗜𝗻𝗰𝗶𝗱𝗲𝗻𝘁 𝗥𝗲𝘀𝗽𝗼𝗻𝘀𝗲: Swiftly audit domains after phishing incidents to identify and fix gaps.
