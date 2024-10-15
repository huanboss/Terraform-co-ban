terraform {
  cloud {
    organization = "Dev-CSC"

    workspaces {
      name = "Import"
    }
  }
}