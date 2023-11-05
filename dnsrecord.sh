#!/bin/bash

# Prompt the user for the Zone Identifier
#read -p "Enter your Zone Identifier: " ZONE_IDENTIFIER

# Prompt the user for the existing API Token
#read -p "Enter your existing API Token: " API_TOKEN

# Fetch DNS Records using the provided API Token
DNS_RECORDS=$(curl -X GET "https://api.cloudflare.com/client/v4/zones/a92b70b3d7d424d397e6ea82b0c10d54/dns_records" -H "Authorization: Bearer DdxSQ_T0iKvSbCkFNhZSwRKVKpoaqIP0BUZ3Pay4")

# Display DNS Records
echo "DNS Records:"
echo "$DNS_RECORDS" | jq .

