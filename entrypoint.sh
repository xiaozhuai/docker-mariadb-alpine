#!/usr/bin/env sh
set -e

echo "CREATE USER IF NOT EXISTS 'root'@'%';" >/etc/mysql-init.sql
echo "ALTER USER 'root'@'%' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';" >>/etc/mysql-init.sql
echo "FLUSH PRIVILEGES;" >>/etc/mysql-init.sql

mysql_install_db \
  --user=mysql \
  --datadir=/data \
  --innodb-flush-method=fsync \
  --innodb-use-native-aio=OFF \
  --skip-test-db

mysqld \
  --user=mysql \
  --datadir=/data \
  --innodb-flush-method=fsync \
  --innodb-use-native-aio=OFF \
  --console \
  --bind-address=0.0.0.0 \
  --port=3306 \
  --skip-networking=0 \
  --init-file=/etc/mysql-init.sql
