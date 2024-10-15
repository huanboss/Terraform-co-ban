terraform {
  cloud {
    organization = "Dev-CSC"

    workspaces {
      name = "Taint-untaint-replace"
    }
  }
}