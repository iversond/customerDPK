#! /bin/bash
echo "------------"
echo "Updating Logo on Signon Page for web domains"

echo " -- Downloading Image from Github"
curl -L -o /tmp/OracleLogo_Black.svg https://github.com/iversond/customerDPK/blob/b1164c73a9e5e025f2f43e1d5aedda2f97b037e6/scripts/images/InsertLogoHere-Header.png

echo "-- Copying to all PS_CFG_HOME/werbserv sites"
sudo -u psadm2 -i sh -c "cp /tmp/OracleLogo_Black.svg \${PS_CFG_HOME}/webserv/*/applications/peoplesoft/PORTAL.war/*/images/"
