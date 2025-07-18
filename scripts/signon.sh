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
# for domain in "${PSFT_PIA_DOMAINS[@]}"; do
#   # Remove square brackets and parentheses from the domain
#   domain=${domain#[[]}
#   domain=${domain%[]]}
  
#   # Do something with the domain
#   echo "Processing domain: ${domain}"
#   echo "-- Copying to PS_CFG_HOME/werbserv/${domain} sites"
#   sudo -u psadm2 -i sh -c "ls \${PS_CFG_HOME}/webserv/${domain}/applications/peoplesoft/PORTAL.war/"
#   sudo -u psadm2 -i sh -c "cp /tmp/OracleLogo_Black.svg \${PS_CFG_HOME}/webserv/${domain}/applications/peoplesoft/PORTAL.war/*/images/"

# done

echo "-- Restart web server for changes"
echo "$(which psa)"
echo "$(which gem)"
# sudo -u opc -i sh -c "/home/opc/.local/share/gem/ruby/3.2.0/bin/psa restart web"