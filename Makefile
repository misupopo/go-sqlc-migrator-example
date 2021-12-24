go-mod-init:
	go mod init misupopo/go-sqlc-migrator-example

# install方法はmacやgolangもしくはubuntuなどがある
# https://docs.sqlc.dev/en/latest/overview/install.html
generate:
	sqlc generate
