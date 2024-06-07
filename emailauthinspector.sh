#!/bin/bash

# Function to check DMARC record
check_dmarc() {
  domain=$1
  dig +short TXT _dmarc.$domain | grep 'v=DMARC1'
}

# Function to check SPF record
check_spf() {
  domain=$1
  dig +short TXT $domain | grep 'v=spf1'
}

# Function to check DKIM record
check_dkim() {
  domain=$1
  # This will require a selector. Assuming default selector 'default', adjust as necessary
  selector="default"
  dig +short TXT $selector._domainkey.$domain | grep 'v=DKIM1'
}

# Read domains from a file
input_file="domains.txt"
output_file="dns_records_report.csv"

# Print headers to console
echo -e "ASSET\tDMARC\tSPF\tDKIM"

# Write headers to CSV file
echo "ASSET,DMARC,SPF,DKIM" > $output_file

while IFS= read -r domain
do
  dmarc=$(check_dmarc $domain)
  spf=$(check_spf $domain)
  dkim=$(check_dkim $domain)

  # Print to console
  echo -e "$domain\t${dmarc:-None}\t${spf:-None}\t${dkim:-None}"

  # Write to CSV file
  echo "$domain,${dmarc:-None},${spf:-None},${dkim:-None}" >> $output_file
done < "$input_file"
