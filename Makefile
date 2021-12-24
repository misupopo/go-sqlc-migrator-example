go-mod-init:
	go mod init misupopo/go-sqlc-migrator-example

# moduleをdownload
go-get:
	go get .

# install方法はmacやgolangもしくはubuntuなどがある
# https://docs.sqlc.dev/en/latest/overview/install.html
generate:
	sqlc generate

# mysql -uexample -pexample1234
sh:
	docker exec -it mysql /bin/bash

sqlboiler-generate:
	sqlboiler mysql

# sqlboilerをdocker containerで実行するため
go-run:
	docker run -it -v $(shell pwd):/go/src/app golang
