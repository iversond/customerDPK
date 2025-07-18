#! /bin/bash
echo "------------"
echo "List Environment"
env

echo "------------"
echo "User: $(whoami)"

echo "------------"
echo "Updating Logo on Signon Page for web domains"

echo " -- Downloading Image from Github"
curl -L -o /tmp/OracleLogo_Black.svg https://raw.githubusercontent.com/iversond/customerDPK/main/scripts/images/InsertLogoHere-Header.png

echo ${PSFT_PIA_DOMAINS}
for domain in "${PSFT_PIA_DOMAINS[@]}"; do
  # Remove square brackets and parentheses from the domain
  domain=${domain#[[]}
  domain=${domain%[]]}
  
  site="PSFT_WEB_${domain}_SITE_NAMES"
  # Do something with the domain
  echo "Processing domain: ${domain} and site: ${!site}"
  echo "-- Copying to PS_CFG_HOME/werbserv/${domain} sites"
  sudo -u psadm2 -i sh -c "cp /tmp/OracleLogo_Black.svg \${PS_CFG_HOME}/webserv/${domain}/applications/peoplesoft/PORTAL.war/${!site}/images/"

done

echo "-- Restart web server for changes"
sudo -u opc -i sh -c "psa restart web"