#! /bin/bash
echo "------------"
echo "Updating Logo on Signon Page for web domains"

echo " -- Downloading Image from Github"
curl -L -o /tmp/OracleLogo_Black.svg https://raw.githubusercontent.com/iversond/customerDPK/main/scripts/images/InsertLogoHere-Header.png

echo "-- Copying to all PS_CFG_HOME/werbserv sites"
sudo -u psadm2 -i sh -c "cp /tmp/OracleLogo_Black.svg \${PS_CFG_HOME}/webserv/*/applications/peoplesoft/PORTAL.war/*/images/"

echo "-- Restart web server for changes"
sudo -u opc -i sh -c "psa restart web"