variable "rcon_password" {
  sensitive = true
  type = string
}

variable "rcon_port" {
  type = string
}

variable "host" {
  type = string
}

variable "gamemode" {
  type = string
  default = "creative"
}

variable "material" {
  type = string
  default = "minecraft:stone"
}