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

policy "appsec_gcp_serviceaccount_restriction" {
    source = "./appsec_gcp_serviceaccount_restriction.sentinel"
    enforcement_level = "advisory"
}

policy "assetmgmt_gcp_naming_validation" {
    source = "./assetmgmt_gcp_naming_validation.sentinel"
    enforcement_level = "advisory"
}

policy "assetmgmt_gcp_resiliency_validation" {
    source = "./assetmgmt_gcp_resiliency_validation.sentinel"
    enforcement_level = "advisory"
}

policy "encryption_gcp_cmek_enforce" {
    source = "./encryption_gcp_cmek_enforce.sentinel"
    enforcement_level = "advisory"
}

policy "iam_gcp_policy_restrictions" {
    source = "./iam_gcp_policy_restrictions.sentinel"
    enforcement_level = "advisory"
}

policy "network_gcp_ip_restriction" {
    source = "./network_gcp_ip_restriction.sentinel"
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

policy "network_gcp_region_restricition" {
    source = "./network_gcp_region_restricition.sentinel"
    enforcement_level = "advisory"
}

policy "network_gcp_ssl_enforce" {
    source = "./network_gcp_ssl_enforce.sentinel"
    enforcement_level = "advisory"
}

policy "storage_gcp_versioning_enforce" {
    source = "./storage_gcp_versioning_enforce.sentinel"
    enforcement_level = "advisory"
}

policy "tagging_gcp_validation" {
    source = "./tagging_gcp_validation.sentinel"
    enforcement_level = "advisory"
}

policy "threat_gcp_data_configuration_restriction" {
    source = "./threat_gcp_data_configuration_restriction.sentinel"
    enforcement_level = "advisory"
}

policy "threat_gcp_unapproved_service_validation" {
    source = "./threat_gcp_unapproved_service_validation.sentinel"
    enforcement_level = "advisory"
}
