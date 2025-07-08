#! /bin/bash

echo "Displaying environment for script"
echo "------------"

echo $(env)

echo "------------"
echo "Updating Logo on Signon Page for web domains"

curl -L -o /tmp/OracleLogo_Black.svg https://upload.wikimedia.org/wikipedia/commons/3/36/PeopleSoft_logo.svg
sudo -u psadm2 -i sh -c "cp /tmp/OracleLogo_Black.svg \${PS_CFG_HOME}/webserv/*/applications/peoplesoft/PORTAL.war/*/images/"
