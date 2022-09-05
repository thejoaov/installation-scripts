export BASE_URL=https://raw.githubusercontent.com/thejoaov/installation-scripts/master

sudo apt install rbenv -y
rbenv init
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
rbenv install 2.7.5
rbenv global 2.7.5
rbenv rehash

echo "rbenv" >> $HOME/.installinfo
