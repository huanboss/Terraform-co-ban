terraform {
  cloud {
    organization = "Dev-CSC"

    workspaces {
      name = "debugging-logging"
    }
  }
}

