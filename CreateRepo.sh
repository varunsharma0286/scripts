#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "Incorrect usage"
	echo "Correct usage:CreateRepo.sh <username> <repo_name>"
	exit
fi

USERNAME=$1
REPO=$2
curl -u $USERNAME https://api.github.com/user/repos -d "{\"name\":\"$REPO\"}"
#curl -u ${USER:-${GITHUBUSER}} https://api.github.com/user/repos -d "{\"name\": \"${REPONAME:-${CURRENTDIR}}\", \"description\": \"${DESCRIPTION}\", \"private\": false, \"has_issues\": true, \"has_downloads\": true, \"has_wiki\": false}"
#git remote set-url origin git@github.com:$$USERNAME/$$REPO.git
#git push --set-upstream origin master
