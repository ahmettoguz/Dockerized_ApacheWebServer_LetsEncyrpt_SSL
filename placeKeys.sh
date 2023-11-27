#!/bin/bash

directory="./src/certificate"

# Create the directory if it doesn't exist
if [ ! -d "$directory" ]; then
    mkdir -p "$directory"
fi

# Write keys
echo "Enter SSLCertificateFile cert.pem (Ctrl+d to end)"
while IFS= read -r line || [[ -n "$line" ]]; do
    key+="$line"$'\n'
done

printf "%s" "$key" > "$directory/cert.pem"
unset key

echo -e "\nEnter SSLCertificateKeyFile privkey.pem (Ctrl+d to end)"
while IFS= read -r line || [[ -n "$line" ]]; do
    key+="$line"$'\n'
done
printf "%s" "$key" > "$directory/privkey.pem"
unset key

echo -e "\nEnter SSLCertificateChainFile chain.pem (Ctrl+d to end)"
while IFS= read -r line || [[ -n "$line" ]]; do
    key+="$line"$'\n'
done
printf "%s" "$key" > "$directory/chain.pem"
unset key

echo -e "\nEnter SSLCACertificateFile fullchain.pem (Ctrl+d to end)"
while IFS= read -r line || [[ -n "$line" ]]; do
    key+="$line"$'\n'
done
printf "%s" "$key" > "$directory/fullchain.pem"

echo -e "\nCertificate files were created at: $directory"