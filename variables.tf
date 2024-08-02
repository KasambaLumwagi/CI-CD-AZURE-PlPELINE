variable "resource_group_name" {
    description = "The resource group's name"
    type = string

}

variable "location" {
    description = "Loc of the region"
    type = string
}

variable "tags" {
    description = "tags associated " 
    type = map(string)
}

variable "storage_account_name" {
    description = "The storage account's name"
    type = string

}

variable "source_folder_name" {
    description = "source of folder" 
    type = string
}

variable "destination_folder_name" {
    description = "destination of folder" 
    type = string
}