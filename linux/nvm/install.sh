export BASE_URL=https://raw.githubusercontent.com/thejoaov/installation-scripts/master

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh --silent | zsh > /dev/null

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install --lts > /dev/null
npm i -g yarn > /dev/null

echo "nvm" >> $HOME/.installinfo
