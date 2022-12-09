variable "cider_block" {
  type = map(list(object({
    item   = number,
    zone   = string,
    ip     = string,
    public = bool
  })))


  default = {
    sub = [
      { item = 1, zone = "us-east-1b", ip = "10.250.0.0/19", public = true },
      { item = 2, zone = "us-east-1b", ip = "10.250.32.0/19", public = false },
      { item = 3, zone = "us-east-1c", ip = "10.250.64.0/19", public = true },
      { item = 4, zone = "us-east-1c", ip = "10.250.96.0/19", public = false },
      { item = 5, zone = "us-east-1d", ip = "10.250.128.0/19", public = true },
      { item = 6, zone = "us-east-1d", ip = "10.250.160.0/19", public = false }
  ] }
}

variable "cidr_block_range" {
  default = "10.250.0.0/16"
}

variable "env"{
    default = "dev"
}

variable "desirestate" {
  default = 3
  type = number
}
variable "path"{
  default = "../Prod/"
}