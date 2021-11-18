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
