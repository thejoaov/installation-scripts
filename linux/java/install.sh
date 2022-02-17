if java -version 2>&1 >/dev/null | grep -q "java version" ; then
  echo "   Java is already installed"
else
  echo '   Installing java openjdk 8 jdk'
  sudo apt-get install openjdk-8-jdk

  echo '   Installing java openjdk 8 jre'
  sudo apt-get install openjdk-8-jre
fi
echo "✅ Success"