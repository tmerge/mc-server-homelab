resource "minecraft_block" "single_block" {
  material = var.material

  position = {
    x = -198
    y = 66
    z = -195
  }
}

resource "minecraft_gamemode" "gamemode" {
  mode = var.gamemode
}