#!/bin/sh
set -x
sed -i "s/fruit_db/$dbName/g" fruitshop-init-db.sql
mysql -h $dbIP -P $dbPort -u$dbUser -p$dbPasswd < fruitshop-init-db.sql
