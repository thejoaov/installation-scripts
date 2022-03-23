if [ 'uname -m' == "arm64" ]; then
    echo "arm64 device"
else
    sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/thejoaov/installation-scripts/master/mac/x86_64/install.sh)"
fi
