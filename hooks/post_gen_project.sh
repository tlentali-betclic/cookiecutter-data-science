#!/bin/bash

# taken from https://www.viget.com/articles/create-a-github-repo-from-the-command-line

repo_name = '{{ cookiecutter.repo_name }}'

username='{{ cookiecutter.github_username }}'

token='{{ cookiecutter.github_token }}'

echo -n "Creating Github repository '$repo_name' ..."
# curl -u "$username:$token" https://api.github.com/user/repos -d '{"name":"'$repo_name'", "private":true}' > /dev/null 2>&1
echo " done."

# echo "Pushing local code to remote ..."
# git init .
# git add .
# git commit -m "initial setup"
# git remote add origin git@github.com:$username/$repo_name.git > /dev/null 2>&1
# git push -u origin master > /dev/null 2>&1
# echo "Done!"
