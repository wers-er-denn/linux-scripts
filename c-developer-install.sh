#!/bin/sh

#	Install Eclipse C/C++, Burp and set Alias

#Install gcc g++ make
zypper in gcc gcc-c++ make

#Download der Zip Datein
wget -P 	/opt/ http://atlas-it.de/files/public-docs/eclipse.zip
wget -P 	/opt/ http://atlas-it.de/files/public-docs/burpsuite.zip

#Entpacken der Zip Datein
unzip -P etiusprub 	/opt/burpsuite.zip	-d /opt/
unzip -P espilce 	/opt/eclipse.zip 	-d /opt/

#Zusätzliches Entpacken von eclipse.tar
tar -xf	/opt/*.tar 	-C /opt/

#Anlegen von Alias
ali1="alias eclipsecpp='/opt/eclipse/eclipse'"
ali2="alias burp='java -jar /opt/burpsuite_free_v1.6.jar'"

#Alias permanent festlegen
echo $ali1 >> /etc/bash.bashrc
echo $ali2 >> /etc/bash.bashrc

#Msg
echo "Ab jetzt kann Eclipse über eclipsecpp und Burp Suite über burp gestartet werden"
echo "Bitte das Terminal neustarten!"
