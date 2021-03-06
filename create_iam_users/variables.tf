variable "login_profile_enabled" {
  type        = bool
  description = "Whether to create IAM user login profile"
  default     = true
}

variable "user_name" {
  type        = string
  description = "Desired name for the IAM user. We recommend using email addresses."
  default     = "test@gmail.com"
}

variable "path" {
  type        = string
  description = "Desired path for the IAM user"
  default     = "/"
}

variable "groups" {
  description = "List of IAM user groups this user should belong to in the account"
  type        = list(string)
  default     = []
}

variable "permissions_boundary" {
  type        = string
  description = "The ARN of the policy that is used to set the permissions boundary for the user"
  default     = "arn:aws:iam::aws:policy/AdministratorAccess"
}

variable "force_destroy" {
  type        = bool
  description = "When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. Without force_destroy a user with non-Terraform-managed access keys and login profile will fail to be destroyed."
  default     = true
}

variable "pgp_key" {
  type        = string
  description = "Provide a base-64 encoded PGP public key, or a keybase username in the form `keybase:username`. Required to encrypt password."
  default = "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"
}

variable "password_reset_required" {
  type        = bool
  description = "Whether the user should be forced to reset the generated password on first login."
  default     = true
}

variable "password_length" {
  type        = number
  description = "The length of the generated password"
  default     = 8
}

