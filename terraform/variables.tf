variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "Name for the VPC"
  default     = "spotmusic-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "s3_bucket_name" {
  description = "Name for the S3 bucket"
  default     = "spotmusic-audio-files"
}

variable "redis_cluster_id" {
  description = "ID for the ElastiCache Redis cluster"
  default     = "spotmusic-redis-cluster"
}

variable "rds_identifier" {
  description = "Identifier for the Amazon RDS instance"
  default     = "spotmusic-rds"
}

variable "rds_name" {
  description = "Name for the Amazon RDS database"
  default     = "spotmusic_db"
}

variable "rds_username" {
  description = "Username for the Amazon RDS database"
  default     = "spotmusic_user"
}

variable "rds_password" {
  description = "Password for the Amazon RDS database"
  default     = "your_password"
}

variable "secrets_manager_secret_name" {
  description = "Name for the AWS Secrets Manager secret"
  default     = "spotmusic-db-secrets"
}

variable "secrets_manager_secret_version" {
  description = "Version for the AWS Secrets Manager secret"
  default     = "1"
}

variable "secrets_manager_secret_username" {
  description = "Username for the AWS Secrets Manager secret"
  default     = "spotmusic_db_user"
}

variable "secrets_manager_secret_password" {
  description = "Password for the AWS Secrets Manager secret"
  default     = "your_db_password"
}