#!/bin/bash
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++";
echo "";
echo "                           L.A.M.P.stack SERVER STATUS";
echo "";
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++";
echo "checking Apache2.services status.........";
echo "please wait";
systemctl status apache2 | grep "Active:";
echo "";
echo "checking Mysql.services status.........";
echo "please wait";
systemctl status mysql | grep "Active:";
echo "";
echo "getting Firewall info.......";
echo "please wait";
ufw status;
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++";
