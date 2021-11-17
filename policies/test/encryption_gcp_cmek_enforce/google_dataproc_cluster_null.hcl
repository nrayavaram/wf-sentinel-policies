module "tfplan-functions" {
  source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-google_dataproc_cluster-null.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}