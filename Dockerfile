FROM golang:1.16.12-alpine3.15
# Support CGO and SSL
RUN apk --no-cache add gcc g++ make
RUN apk add git
#WORKDIR /go/src/app
#COPY . .
#RUN go get github.com/gorilla/mux
RUN go install github.com/volatiletech/sqlboiler/v4@latest
RUN go install github.com/volatiletech/sqlboiler/v4/drivers/sqlboiler-mysql@latest
#RUN GOOS=linux go build -ldflags="-s -w" -o ./bin/test ./main.go

#FROM alpine:3.10
#RUN apk --no-cache add ca-certificates
#WORKDIR /usr/bin
#COPY --from=build /go/src/app/bin /go/bin
#EXPOSE 8080
#ENTRYPOINT /go/bin/test --port 8080

