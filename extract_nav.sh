#!/bin/bash

# Script: Extract Scheme Name and Asset Value (NAV) from AMFI NAVAll.txt

# URL of AMFI NAVAll.txt
URL="https://www.amfiindia.com/spages/NAVAll.txt"

# Output file
OUTPUT="schemes.tsv"

# Download and process
curl -s "$URL" | awk -F';' '
BEGIN {
    OFS="\t";
    print "Scheme Name", "Asset Value (NAV)"
}
# Skip header (NR > 1) and select only rows with valid Scheme Name and NAV
NR > 1 && NF >= 5 {
    scheme = $4;
    nav = $5;
    if (scheme != "" && nav != "") {
        print scheme, nav
    }
}' > "$OUTPUT"

echo "✅ Extracted Scheme Name and NAV into $OUTPUT"

