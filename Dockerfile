FROM golang:1.18 as builder

WORKDIR /app

ENV PORT=3005

COPY . .

# RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./bin

# FROM scratch as runner

# COPY --from=builder /app/bin/ /

# ENTRYPOINT [ "./" ]

RUN go run main.go