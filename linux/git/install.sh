export BASE_URL=https://raw.githubusercontent.com/thejoaov/installation-scripts/master

rm -rf $HOME/.gitconfig
curl -s "$BASE_URL/linux/git/.gitconfig" > $HOME/.gitconfig