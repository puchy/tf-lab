generate_hcl "terraform.tf" {
    content {
        terraform {
            required_version = "1.9.8"
        }
    }
}
