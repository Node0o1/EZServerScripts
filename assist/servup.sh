#!/bin/bash

echo "starting server.......";
echo "please wait";
systemctl start apache2;
echo "apache2 started";

echo "starting mysql.services.....";
echo "please wait";
systemctl start mysql;
echo "mysql started";

echo "openning port\s.........";
echo "attempt port# 80:http";
echo "please wait";
ufw allow http;
echo "port 80:HTTP openned\n";
echo "attempt port# 443:https";
echo "please wait";
ufw allow https;
echo "port 443:HTTPS openned\n";
echo "attempt port# 22:SSH";
echo "please wait";
ufw allow ssh;
echo "port 22:SSH openned\n";

./servstat.sh;

echo "                  THE APACHE2 AND MYSQL SERVICES HAVE BEEN STARTED";
echo "                        PORT# 80:HTTP / 443:HTTPS / 22:SSH HAVE BEEN SET TO ALLOW";
echo "";
echo "                       L.A.M.P.stack Has Been Activated !::!";
echo "";
