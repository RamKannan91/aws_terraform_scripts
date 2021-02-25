module "iam-users" {

source = "./iam-users"
name = var.name
path = var.path
#pgp_key = var.pgp_key
#user = module.iam-users.test_uesr
}

module "access-key" {
source = "./access-key"
name = var.name
#pgp_key = var.pgp_key
user = module.iam-users.test-user.name
}
