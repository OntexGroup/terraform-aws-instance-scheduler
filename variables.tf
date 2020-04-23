variable "project" {
  type = string
  description = "Used to identify the project(s) the resource supports"
}
variable "stage" {
  type = string 
  description = "Used to distinguish between development, test, and production infrastructure"
}
variable "creator" {
  type = string 
  description = "Used to identify who/what is the creator of the resource."
  default = "terraform"
}
variable "owner" {
  type = string 
  description = "Used to identify who is responsible for the resource"
  default = "Ontex Digital Factory"
}
variable "status" {
  type = string 
  description = "Used to identify the current state of the resource (use or un-used). "
  default = "active"
}
variable "backuppolicy" {
  type = string 
  description = "Backup policy name to apply to the resource"
  default = "no_backup"
}
variable "date" {
  type = string
  description = "Date/Time for scheduled activity (stop/start)"
  default = "N/A"
}
variable "time" {
  type = string 
  description = "Date/Time for scheduled activity (stop/start)"
  default = "N/A"
}
variable "scaled" {
  type = string 
  description = "Used to indicate if a resource is included in an automated activity."
  default = "false"
}
variable "customer" {
  type = string 
  description = "Used to identify a specific client that a particular group of resources serves"
  default = "N/A"
}
variable "costCenter" {
  type = string 
  description = "Used to identify the cost center or business unit associated with a resource"
  default = "N/A"
}
variable "confidentiality" {
  type = string 
  description = "An identifier for the specific data-confidentiality level a resource supports"
  default = "confidential"
}
variable "compliance" {
  type = string 
  description = "An identifier for workloads designed to adhere to specific compliance requirements"
  default = "none"
}
variable "description" {
  type = string 
  description = "More information on the resource."
  default = "none"
}

variable "bastion" {
  type    = any
  default = {}
  description = "Used to set resource creation & subnet"
}

variable "aws" {
	type = any
	default = {}
}

variable "vpc_id" {
  type = string
	description = "A vpc id to create the resource in"
}

variable "public_subnet_ids" {
	type = list
	description = "A list of public subnet id to launch the bastion in"
}

variable custom_tags_list {
	type = list
	default = [] 
  description = "A list of custom tags"
}

variable custom_tags {
	type = any
	default = {} 
  description = "A list of custom tags"
}

variable "subsidiary_identifier" {
  type = string
  default = "sub"
  description = "This is the subsidiary use in the name (eg. sub for subscription, health for healthcare, etc)"
}

variable "short_env" {
  type = map
  default = {
    development  = "dev"
    production    = "prod"
    staging       = "stag"
    integration   = "int"
    uat           = "uat"
    preproduction = "pprod"
    preprod       = "pprod"
  }
  description = "Use to shorten environement in name. Some limit apply sometinmes on res name."
}