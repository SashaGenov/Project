FROM golang:1.22

WORKDIR /parcel

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /parcel

CMD ["/main"]