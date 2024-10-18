FROM golang:1.20-alpine AS builder

WORKDIR /app

COPY main.go .

RUN go mod init app && go mod tidy

RUN CGO_ENABLED=0 go build -o /hello

FROM scratch

COPY --from=builder /hello /hello

CMD ["/hello"]