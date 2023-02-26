rm -rf print_news

# download github
git clone --quiet https://github.com/Thib1708/print_news.git

cd ./print_news
make >> /dev/null
mkdir articles
chmod 751 ./bin/main.sh
cd ..

RC_FILE="$HOME/.zshrc"

# set up the alias
if ! grep "SUBJECT=" "$RC_FILE" &> /dev/null; then
	printf "\nexport SUBJECT=\"Apple\"\n
export COUNTRY=\"fr\"\n
export API_KEY=\"\"\n
export CITY=\"Lyon\"\n
alias news=%s/print_news/bin/main.sh\n
news" "$HOME" >> "$RC_FILE"

fi

