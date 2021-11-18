module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "generic-functions" {
    source = "../common-functions/generic-functions/generic-functions.sentinel"
}

policy "encryption_gcp_cmek_enforce" {
    source = "./encryption_gcp_cmek_enforce.sentinel"
    enforcement_level = "advisory"
}

policy "iam_gcp_policy_restrictions" {
    source = "./iam_gcp_policy_restrictions.sentinel"
    enforcement_level = "advisory"
}

policy "network_gcp_mtu_restriction" {
    source = "./network_gcp_mtu_restriction.sentinel"
    enforcement_level = "advisory"
}

policy "network_gcp_port_restriction" {
    source = "./network_gcp_port_restriction.sentinel"
    enforcement_level = "advisory"
}

param "gcp_region" {
  value = [ "US" ]
}

param "owner" {
  value = ["hybridenv"] 
}

param "application_division" {
  value =  ["pci", "paa", "hdpa", "hra", "others"]
}

param "application_name" {
  value =  ["app1","demo"]
}

param "application_role" {
  value = ["app", "web", "auth", "data"]
}

param "environment" {
  value =   ["prod", "int", "uat", "stage", "dev", "test"] 
}

param "au" {
  value = [ "0223092" ]
}

param "prefix" {
    value = "us-"
}