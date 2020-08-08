FROM golang:1.14.6 as builder
WORKDIR /go/src/github.com/meteorless/golang-sample-for-prometheus-exporter/
COPY golang-sample-for-prometheus-exporter.go .
RUN go get -d -u github.com/prometheus/client_golang/prometheus
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

FROM alpine:latest  
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=builder /go/src/github.com/meteorless/golang-sample-for-prometheus-exporter/app .
EXPOSE 8000
CMD ["./app"]  