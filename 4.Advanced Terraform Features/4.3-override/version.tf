terraform {
  cloud {
    organization = "Dev-CSC"

    workspaces {
      name = "override"
    }
  }
}