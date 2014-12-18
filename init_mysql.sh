#!/bin/bash
/etc/init.d/mysql start
RANDAM_PASS=$(awk '{print $NF}' /root/.mysql_secret | head -1)

cat << EOF | mysql -p${RANDAM_PASS} --connect-expired-password
SET PASSWORD= PASSWORD('root_password');
UPDATE mysql.user SET password= PASSWORD('root_password');
GRANT ALL ON *.* TO fabric@'%' IDENTIFIED BY 'fabric_password';
GRANT ALL ON d1.* TO app@'%' IDENTIFIED BY 'app_password';
EOF

/etc/init.d/mysql stop
rm /var/lib/mysql/{error.log,slow.log,auto.cnf}
