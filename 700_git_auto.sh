#!/bin/bash
#set -e
# set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.

# checking if I have the latest files from github
echo "Checking for newer files online first"
git pull

# Below command will backup everything inside the project folder
git add --all .

# Give a comment to the commit if you want
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Write commit comment: :::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"

read input

# Committing to the local repository with a message containing the time details and commit text
git commit -m "$input"

# Push the local files to github
git push -u origin master


echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::: Git push done. ::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
