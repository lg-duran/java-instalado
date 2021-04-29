sudo apt remove openjdk-*

sudo mkdir /usr/lib/jvm/

sudo mv /home/lucas/Downloads/jdk-11.0.10_linux-x64_bin.tar.gz /usr/lib/jvm

sudo tar zxvf /usr/lib/jvm/jdk-11.0.10_linux-x64_bin.tar.gz -C /usr/lib/jvm/

sudo sed -i '3i\\' /etc/profile

sudo sed -i '4i\export JAVA_HOME=/usr/lib/jvm/jdk-11.0.10\' /etc/profile

sudo sed -i '5i\export JRE_HOME=/usr/lib/jvm/jdk-11.0.10\jre' /etc/profile

sudo sed -i '6i\\' /etc/profile

sudo sed -i '7i\export PATH=${PATH}:${JAVA_HOME}/bin\' /etc/profile

sudo sed -i '8i\\' /etc/profile

sudo sed -i '9i\CLASSPATH=$JAVA_HOME/lib/tools.jar\' /etc/profile

sudo sed -i '10i\CLASSPATH=.:${CLASSPATH}\' /etc/profile

sudo sed -i '11i\export CLASSPATH\' /etc/profile

sudo apt autoremove