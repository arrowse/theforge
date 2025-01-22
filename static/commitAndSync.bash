echo -e "\e[1;45m Welcome to the Forge commit tool.\e[0m"
eval "$(ssh-agent -s)" 1> /dev/null
read -r -p "Would you like to commit your changes? [y/N] " response
if [[ "$response" =~ [yY](es)* ]]
then
    echo -e "\e[1;46m Committing changes... \e[0m"
    git add ./
    read -r -p "Please enter a commit message: " message
    git commit -m "$message"
fi
echo -e "\e[1;42m Preparing to sync Git repositories \e[0m"
ssh-add ~/.ssh/YOUR-PRIVATE-KEY-FILE
git push GITLAB-REMOTE-NAME
git push GITHUB-REMOTE-NAME
echo -e "\e[1;41m You're all set! \e[0m"
