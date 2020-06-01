#!/bin/bash    

# From env variables
FTPURL="ftp://$FTP_USER:$FTP_PASSWORD@$FTP_HOST"
LCD="$(pwd)"
RCD="sites/decentral-card.net/"
#DELETE="--delete"
lftp -c "set ftp:list-options -a;
set ftp:ssl-allow no; 
open '$FTPURL';
lcd $LCD;
cd $RCD;
mirror --reverse --exclude .git --exclude logs --exclude-glob .* --exclude upload.sh"