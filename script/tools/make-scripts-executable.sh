#!/usr/bin/env bash

# If you're on windows use a git-bash shell to run this script

find . -type f \( -name "*.sh" -o -name "*.ps1" \) -exec chmod +x {} \;