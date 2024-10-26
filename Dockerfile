FROM golang:1.18

WORKDIR /app

COPY . /app

RUN go get .

RUN go test ./...

RUN go build -o cicd-go-app ./main.go

EXPOSE 8081

CMD [ "/app/cicd-go-app" ]
