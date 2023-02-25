#/bin/bash

RC_FILE="$HOME/.zshrc"

printf "installing zsh\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
printf "zsh installation : DONE\n\n"

printf "installing zsh-autosuggestion\n"
cd ~/.oh_my_zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
printf "plugins=(\n
# other plugins...\n
zsh-autosuggestions\n
)" >> "$RC_FILE"
printf "zsh-autosuggestion installation : DONE\n\n"

printf "installing zsh-syntax-highlighting\n"
cd ~
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
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
"

printf "installing print_news\n"
cd ~
bash install-print_news.sh
printf "print_news installation : DONE\n\n"

