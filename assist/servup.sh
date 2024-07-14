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
echo "port 80:HTTP openned";
echo "openning port\s.........";
echo "attempt port# 443:https";
echo "please wait";
ufw allow https;
echo "port 443:HTTPS openned";

/home/developer/assist/servstat.sh;

echo "                  THE APACHE2 AND MYSQL SERVICES HAVE BEEN STARTED";
echo "                        PORT# 80:HTTP HAS BEEN SET TO ALLOW";
echo "";
echo "                       L.A.M.P.stack Has Been Activated !::!";
echo "";
