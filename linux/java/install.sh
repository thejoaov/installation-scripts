if java -version 2>&1 >/dev/null | grep -q "java version" ; then
  echo "   Java is already installed"
else
  echo '   Installing java openjdk 8 jdk and jre'
  sudo apt-get -qq install openjdk-8-jdk openjdk-8-jre -y
fi
echo "✅ Success"