variable "user_uuid" {
  description = "The UUID of the user"
  type        = string
}

variable "bucket_name" {
  description = "s3 bucket name"
  type        = string
}

variable "index_html_filepath" {
  description = "The file path for index.html"
  type        = string
}

variable "error_html_filepath" {
  description = "The file path for error.html"
  type        = string
}

variable "content_version" {
  type        = number
}

variable "assets_path" {
  description = "path to asset folder"
  type        = string
}