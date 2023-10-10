# Build stage
FROM golang:1.21-alpine3.18 AS development
WORKDIR /app
COPY . .
RUN go install github.com/cosmtrek/air@latest
RUN go build -o main main.go
CMD ["air", "-c", ".air.toml"]

# Run stage
FROM alpine:3.18 AS production
WORKDIR /app
COPY --from=development /app/main .
COPY .env .
COPY wait-for.sh .
RUN chmod +x wait-for.sh
EXPOSE 8080
CMD [ "/app/main" ]
