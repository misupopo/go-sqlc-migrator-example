#!/bin/sh

mysql -uexample -pexample1234 -e "CREATE DATABASE IF NOT EXISTS example default character set utf8 ;"
mysql -uexample -pexample1234 example < /schema/example-product-master-sql-basic-data.sql
echo "test"
