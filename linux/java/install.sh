if [ ! java -version 2>&1 >/dev/null | grep -q "java version" ] ; then
  sudo apt-get install -qq openjdk-8-jdk -y > /dev/null
  sudo apt-get install -qq openjdk-8-jre -y > /dev/null
fi

echo "java" >> $HOME/.installinfo
