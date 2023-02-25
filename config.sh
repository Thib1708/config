#/bin/bash

RC_FILE="$HOME/.zshrc"

git clone https://github.com/Thib1708/config.git

printf "\033[0installing zsh-autosuggestion\n"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> "$RC_FILE"
printf "\033[1;32mzsh-autosuggestion installation : DONE\n\n"

printf "\033[0installing zsh-syntax-highlighting\n"
cd ~
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
printf "\033[1;32mzsh-syntax-highlighting installation : DONE\n\n"

printf "\033[0adding alias\n"
printf "
alias gs='git status'\n
alias ga='git add'\n
alias gb='git branch'\n
alias gch='git checkout'\n
alias gp='git push'\n
alias gc='git commit'\n
alias gcl='git clone'\n
" >> "$RC_FILE"

printf "\033[0installing print_news\n"
chmod 751 ~/config/install-print_news.sh
bash ~/config/install-print_news.sh
printf "\033[1;32mprint_news installation : DONE\n\n"

printf "\033[0mAdding .vimrc\n"
cp -r ~/config/.vimrc ~/
printf "\033[1;32mDONE"
