locals {
  t_start = []
}

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

resource "minecraft_fill" "T" {
  material = var.material
  start = {
    x = 0,
    y = 0,
    z = 0,
  }
  end = {
    x = 4,
    y = 10,
    z = 4,
  }
}

resource "minecraft_fill" "T2" {
  depends_on = [ minecraft_fill.T ]
  material = var.material
  start = {
    x = 0,
    y = 11,
    z = 0,
  }
  end = {
    x = 5,
    y = 11,
    z = 4,
  }
}

resource "minecraft_fill" "I" {
  material = var.material
  start = {
    x = 6,
    y = 0,
    z = 0
  }
  end = {
    x = 10,
    y = 11
    z = 4
  }
}

resource "minecraft_fill" "L" {
  material = var.material
  start = {
    x = 12,
    y = 0,
    z = 0
  }
  end = {
    x = 12,
    y = 11,
    z = 4
  }
}

resource "minecraft_fill" "L2" {
  material = var.material
  start = {
    x = 13,
    y = 0,
    z = 0
  }
  end = {
    x = 21,
    y = 1,
    z = 4
  }
}
