#!/bin/bash

mkdir -p /tmp/oldschool
wget -O '/tmp/oldschool/OldSchool.msi 'http://www.runescape.com/downloads/oldschool.msi'
cd /tmp/oldschool && msiextract OldSchool.msi
cp /tmp/oldschool/jagexlauncher/jagexlauncher/bin/jagexappletviewer.jar /usr/local/bin/jagexappletviewer.jar
cp /tmp/oldschool/jagexlauncher/jagexlauncher/oldschool/jagexappletviewer.png /usr/local/share/jagexappletviewer.png
chmod 755 /usr/local/bin/jagexappletviewer.jar
rm -rf /tmp/oldschool
echo "/usr/local/bin/jre/bin/java -Duser.home=$HOME -Djava.class.path=/usr/local/bin/jagexappletviewer.jar -Dcom.jagex.config=http://oldschool.runescape.com/jav_config.ws jagexappletviewer /usr/local/share/" >> /usr/local/bin/oldschool
chmod +x /usr/local/bin/oldschool
