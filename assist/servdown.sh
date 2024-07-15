#!/bin/bash

echo "Stopping Apache2.services.......";
echo "please wait";
systemctl stop apache2;
echo "Apache2.services stopped";

echo "stopping Mysql.services.....";
echo "please wait";
systemctl stop mysql;
echo "Mysql stopped";

echo "closing port\s.........";
echo "closing port# 80:HTTP";
echo "please wait";
ufw deny http;
echo "port 80:HTTP closed";

echo "closing port\s.........";
echo "closing port# 443:HTTPS";
echo "please wait";
ufw deny https;
echo "port 443:https closed";

echo "checking/ closing port 22:SSH for security";
echo "please wait";
ufw deny ssh;
echo "port 22:SSH closed";

#be sure to edit this path to point the right file path for your setup.
~/assist/servstat.sh;

echo "                THE APACHE2 AND MYSQL SERVICES HAVE BEEN STOPPED";
echo "                PORT # 80:HTTP, 443:HTTPS. AND PORT#22 HAVE BEEN SET TO DENY";
echo "";
echo "                   L.A.M.P.stack Has Been De-Activated !::!";
echo "";
