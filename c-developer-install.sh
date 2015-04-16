#!/bin/sh

#	Install Eclipse C/C++, Burp and set Alias

#Execute as root
su root

#Install gcc g++ make git
zypper in gcc gcc-c++ make git

#Download Zip files
wget -P 	/opt/ http://atlas-it.de/files/public-docs/eclipse.zip
wget -P 	/opt/ http://atlas-it.de/files/public-docs/burpsuite.zip

#Extract Zip files
unzip -P etiusprub 	/opt/burpsuite.zip	-d /opt/
unzip -P espilce 	/opt/eclipse.zip 	-d /opt/

#Extract eclipse.tar
tar -xf	/opt/*.tar 	-C /opt/

#Create Alias variables
ali1="alias eclipsecpp='/opt/eclipse/eclipse'"
ali2="alias burp='java -jar /opt/burpsuite_free_v1.6.jar'"

#Set Alias in Bash cfg
echo $ali1 >> /etc/bash.bashrc
echo $ali2 >> /etc/bash.bashrc

#Msg to User
echo "Ab jetzt kann Eclipse über eclipsecpp und Burp Suite über burp gestartet werden"
echo "Bitte das Terminal neustarten!"
