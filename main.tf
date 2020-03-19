variable "lannisters" {
  type = list(string)
  default = ["tywin", "joanna", "jaime", "cersei", "tyrion", "lancel", "tyos"]
}

resource "random_shuffle" "lannister" {
  input = [
    for lannister in var.lannisters:
    upper(lannister)
  ]
}

output "lannisters" {
  value = random_shuffle.lannister.result
}

# version: 2
