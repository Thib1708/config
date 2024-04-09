#/bin/bash
i=0
RC_FILE="$HOME/.zshrc"

printf "\033[0minstalling config\n"
git clone --quiet https://github.com/ThibaultGiraudon/config.git
bash ~/config/chargement.sh

printf "\033[0minstalling zsh-autosuggestion\n"
git clone --quiet https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> "$RC_FILE"
bash ~/config/chargement.sh

printf "\033[0minstalling zsh-syntax-highlighting\n"
cd ~
git clone --quiet https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
bash ~/config/chargement.sh

printf "\033[0madding alias\n"
printf "
alias gs='git status'\n
alias ga='git add'\n
alias gb='git branch'\n
alias gch='git checkout'\n
alias gp='git push'\n
alias gc='git commit'\n
alias gcl='git clone'\n
" >> "$RC_FILE"

printf "\033[0mAdding .vimrc\n"
cp -r ~/config/.vimrc ~/
printf "\033[1;32mConfig installation : DONE"
