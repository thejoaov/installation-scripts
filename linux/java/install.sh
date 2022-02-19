if java -version 2>&1 >/dev/null | grep -q "java version" ; then
  echo "   Java is already installed"
else
  echo '   Installing java openjdk 11 jdk and jre'
  sudo apt-get install -qq -o=Dpkg::Use-Pty=0 openjdk-11-jdk openjdk-11-jre -y
fi
echo "✅ Success"
echo "java" >> $HOME/.installinfo