#/bin/bash

RC_FILE="$HOME/.zshrc"

git clone 

printf "installing zsh-autosuggestion\n"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> "$RC_FILE"
printf "zsh-autosuggestion installation : DONE\n\n"

printf "installing zsh-syntax-highlighting\n"
cd ~
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
printf "zsh-syntax-highlighting installation : DONE\n\n"

printf "adding alias\n"
printf "
alias gs='git status'\n
alias ga='git add'\n
alias gb='git branch'\n
alias gch='git checkout'\n
alias gp='git push'\n
alias gc='git commit'\n
alias gcl='git clone'\n
" >> "$RC_FILE"

printf "installing print_news\n"
cd ~
rm -rf print_news

git clone https://github.com/Thib1708/print_news.git

cd ./print_news
make 
mkdir articles
chmod 751 ./bin/main.sh
cd ..

cp -r print_news "$HOME"

cd "$HOME" || exit
rm -rf temp_____

# set up the alias
if ! grep "SUBJECT=" "$RC_FILE" &> /dev/null; then
	echo "cmds not present"
	printf "\nexport SUBJECT=\"Apple\"\n
export COUNTRY=\"fr\"\n
export API_KEY=\"\"\n
export CITY=\"Lyon\"\n
alias news=%s/print_news/bin/main.sh\n
news" "$HOME" >> "$RC_FILE"
printf "\033[1;32mcmds add\033[0m\n"
printf "\033[48;5;5mopen ~/.zshrc and copy/paste your api_key in export API_KEY=\"\"\033[0m\n"
fi

printf "print_news installation : DONE\n\n"

