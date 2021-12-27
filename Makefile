go-mod-init:
	go mod init misupopo/go-sqlc-migrator-example

# moduleをdownload
go-get:
	go get .

# install方法はmacやgolangもしくはubuntuなどがある
# https://docs.sqlc.dev/en/latest/overview/install.html
generate:
	sqlc generate

# sqlboilerの実行
# 実行するとmodelのdirectoryが作成される（sqlboiler.tomlのoutput）
sqlboiler-generate:
	sqlboiler mysql

# mysql -uexample -pexample1234
sh-mysql:
	docker exec -it mysql /bin/bash

# おそらくttyがtrueになっているため/bin/shじゃないと入れない
sh-sqlboiler:
	docker exec -it $(shell docker ps -aqf "name=sqlboiler") /bin/sh

# sqlboilerをdocker containerで実行するため
go-run:
	docker run -it -v $(shell pwd):/go/src/app sqlboiler

