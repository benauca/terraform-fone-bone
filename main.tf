terraform {
  cloud {
    organization = "test-cto"
    workspaces {
      name = "terraform-fone-bone-dev"
    }
  }
}

variable "content" {
  sensitive   = true
}
variable "password" {
  sensitive   = true
}

resource "random_pet" "generate_id" {
  length    = 1
  prefix    = "Fone Bone"
  separator = "."
}

resource "local_file" "comic" {
  filename = "./mis-comic.txt"
  content = "${var.content} - ${var.password}"
}
