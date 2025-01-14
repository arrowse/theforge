echo -e "\e[1;45m Welcome to the Froge commit tool.\e[0m"
read -r -p "Would you like to commit your changes? [y/N] " response
if [[ "$response" =~ [yY](es)* ]]
then
    echo -e "\e[1;46m Committing changes... \e[0m"
    git add ./
    read -r -p "Please enter a commit message: " message
    git commit -m "$message"
fi
echo -e "\e[1;42m Preparing to sync Git repositories \e[0m"
ssh-add ~/.ssh/afiskforge
git push origin
git push 
echo -e "\e[1;41m You're all set! \e[0m"
