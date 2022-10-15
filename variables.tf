variable "ext" {
  type = map(any)
  default = {
    prod = {
      nodered  = [1880]
      grafana  = [3000]
      influxdb = [8086]
    }
    dev = {
      nodered  = [1980]
      grafana  = [3100]
      influxdb = [8186]
    }
  }
}

variable "image" {
  type = map(any)
  default = {
    prod = {
      nodered  = "nodered/node-red:latest-minimal"
      grafana  = "grafana/grafana"
      influxdb = "quay.io/influxdb/influxdb:v2.0.2"
    }
    dev = {
      nodered  = "nodered/node-red:latest"
      grafana  = "grafana/grafana"
      influxdb = "quay.io/influxdb/influxdb:v2.0.2"
    }
  }
}
