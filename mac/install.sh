if [ 'uname -m' == "arm64" ]; then
    echo "arm64 device"
else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/thejoaov/installation-scripts/master/mac/x86_64/install.sh)"
fi
