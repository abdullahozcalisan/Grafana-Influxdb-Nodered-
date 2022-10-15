locals {
  deployment = {
    nodered = {
      cont_count = length(var.ext[terraform.workspace]["nodered"])
      image      = var.image[terraform.workspace]["nodered"]
      ext        = var.ext[terraform.workspace]["nodered"]
      int        = 1880
      volumes = [
        { container_path_each = "/data" }
      ]

    }
    influxdb = {
      cont_count = length(var.ext[terraform.workspace]["influxdb"])
      image      = var.image[terraform.workspace]["influxdb"]
      ext        = var.ext[terraform.workspace]["influxdb"]
      int        = 8086
      volumes = [
        { container_path_each = "/var/lib/influxdb" }
      ]
    }
    grafana = {
      cont_count = length(var.ext[terraform.workspace]["grafana"])
      image      = var.image[terraform.workspace]["grafana"]
      ext        = var.ext[terraform.workspace]["grafana"]
      int        = 3000
      volumes = [
        { container_path_each = "/var/lib/grafana" },
        { container_path_each = "/etc/grafana" }
      ]
    }
  }
}
