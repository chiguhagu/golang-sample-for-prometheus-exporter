# golang-sample-for-prometheus-exporter

This app is a sample that collects application metrics via Exporter.

## How To Use

### 1. Docker Build

```shell
docker build -t golang-sample-for-prometheus-exporter .
```

### 2. Docker-compose Up

```shell
docker-compose up
```

### 3. Access To Prometheus

[http://localhost:9090](http://localhost:9090)

## GoDoc Links

- Use Prometheus
  - https://godoc.org/github.com/prometheus/client_golang/prometheus
  - https://godoc.org/github.com/prometheus/client_golang/prometheus/promauto
  - https://godoc.org/github.com/prometheus/client_golang/prometheus/promhttp
