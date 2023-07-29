FROM golang:1.20 

WORKDIR /app

COPY . .

RUN go mod tidy

RUN go build -o ./build/jenkin_test_backend ./main.go

CMD ["./buid/jenkin_test_backend"]