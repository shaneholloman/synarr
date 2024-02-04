#!/bin/bash

# List of domains to check. Add your domains here.
DOMAINS=(
    "ghcr.io"
    "registry-1.docker.io"
    "quay.io"
)

# Array to store failed domains
FAILED_DOMAINS=()

# Print the list of domains that will be checked
echo ""
echo -e "\033[0;34m Now checking these registry domains: \033[0m"
echo ""
for DOMAIN in "${DOMAINS[@]}"; do
    echo "  - $DOMAIN"
done
echo ""

# Function to test registry
test_registry() {
    # The domain to check
    local HOST=$1
    # The port to check (default to 443 if not specified)
    local PORT=${2:-443}
    local FAILED=0

    # Check DNS resolution for the domain
    echo "> $HOST DNS resolution check ..."
    if nslookup "$HOST" > /dev/null 2>&1; then
        echo "+ $HOST DNS resolution successful."
    # If nslookup fails, try pinging the domain
    elif ping -c 1 "$HOST" > /dev/null 2>&1; then
        echo "+ $HOST Ping successful (DNS resolution assumed)."
    else
        echo "- DNS resolution failed for $HOST."
        FAILED=1
    fi

    # Test connection to the domain on the specified port
    echo "> $HOST Test connection on port $PORT..."
    if curl -I https://"$HOST":"$PORT" > /dev/null 2>&1; then
        echo "+ $HOST Successfully connected on port $PORT."
    else
        echo "- $HOST Failed to connect on port $PORT."
        FAILED=1
    fi

    # If any test failed, add the domain to the FAILED_DOMAINS array
    if [ $FAILED -eq 1 ]; then
        FAILED_DOMAINS+=("$HOST")
    else
        echo "+ Each test passed for $HOST."
    fi
    echo ""
}

# Main

# Test each domain in the list
for DOMAIN in "${DOMAINS[@]}"; do
    test_registry "$DOMAIN"
done

# Count the number of failed domains
FAILED_COUNT=${#FAILED_DOMAINS[@]}

# If all tests passed
if [ "$FAILED_COUNT" -eq 0 ]; then
    echo -e "\033[0;32m • All registry checks passed. Noice!\033[0m"
# If some tests passed
elif [ "$FAILED_COUNT" -lt ${#DOMAINS[@]} ]; then
    echo -e "\033[0;33m • Not all registry checks passed. Maybe check your spelling in the domains list ... \033[0m"
# If no tests passed
else
    echo -e "\033[0;31m ! No registry checks passed. Check your wan access ... \033[0m"
fi
echo ""
