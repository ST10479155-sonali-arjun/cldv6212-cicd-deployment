#!/bin/bash
# Loops through a list of websites and checks whether each one is reachable,
# using curl to request just the HTTP headers (-I) so it's fast and doesn't
# download the whole page.

websites=(
    "https://www.google.com"
    "https://www.github.com"
    "https://www.microsoft.com"
    "https://www.example.com"
)

for site in "${websites[@]}"; do
    status_code=$(curl -s -o /dev/null -w "%{http_code}" --max-time 5 "$site")

    if [ "$status_code" -ge 200 ] && [ "$status_code" -lt 400 ]; then
        echo "$site is reachable (HTTP $status_code)"
    else
        echo "$site is NOT reachable (HTTP $status_code)"
    fi
done