variable "lannisters" {
  type = list(string)
  default = ["tywin", "joanna", "jaime", "cersei", "tyrion", "LANCEL", "tyos"]
}

resource "random_shuffle" "lannister" {
  input = [
    for lannister in var.lannisters:
    lower(lannister)
  ]
}

output "lannisters" {
  value = random_shuffle.lannister.result
}

# version: 3
