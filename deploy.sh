#!/bin/bash

# Prompt for a commit message
read -p "Enter commit message: " m

# Run Hugo commands
hugo --minify --buildDrafts --buildFuture

# Add changes to git
git add .

# Commit the changes with the provided message
git commit -m "$m"

# Push changes to the master branch using the stored credentials
git push origin master --force

# Optional: Confirm success
echo "Deployed and changes pushed to master!"
