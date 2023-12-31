variable "user_uuid" {
  description = "The UUID of the user"
  type        = string
  validation {
    condition        = can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$", var.user_uuid))
    error_message    = "The user_uuid value is not a valid UUID."
  }
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string

  validation {
    condition     = length(var.bucket_name) >= 3 && length(var.bucket_name) <= 63
    error_message = "S3 bucket name must be between 3 and 63 characters in length."
  }

}
variable "index_html_filepath" {
  description = "The file path for index.html"
  type        = string

  # validation {
  #   condition     = fileexists(var.index_html_filepath)
  #   error_message = "The provided path for index.html does not exist."
  # }
}

variable "assets_path" {
  description = "path to asset folder"
  type        = string
}

variable "error_html_filepath" {
  description = "The file path for error.html"
  type        = string

  # validation {
  #   condition     = fileexists(var.error_html_filepath)
  #   error_message = "The provided path for error.html does not exist."
  # }
}

variable "content_version" {
  description = "The content version. Should be a positive integer starting at 1."
  type        = number

  validation {
    condition     = var.content_version > 0 && floor(var.content_version) == var.content_version
    error_message = "The content_version must be a positive integer starting at 1."
  }
}

