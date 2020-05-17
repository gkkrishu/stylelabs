variable "admin_username" {
    type     = string
    
  }

  variable "admin_password" {
    type     = string
    
  }

  variable "location" {
    type     = string
  }

  variable "rg_tag" {
    type    = string
    default = "production"
  }

  variable "rg_name" {
    type    = string
  }

  variable "vm_count" {
    default  = 2
  }

  variable "vm_image_string" {
    type    = string
  }

  variable "vm_size" {
    type    = string
    
  }