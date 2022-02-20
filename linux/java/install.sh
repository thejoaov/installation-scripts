if ! java -version 2>&1 >/dev/null | grep -q "java version" ; then
  sudo apt-get install -qq openjdk-8-jdk openjdk-8-jre -y
  export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
  export PATH=$PATH:$JAVA_HOME/bin
  printf "\n\nexport JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64\nexport PATH=\$PATH:\$JAVA_HOME/bin" >> $HOME/.bashrc
fi

echo "java" >> $HOME/.installinfo
