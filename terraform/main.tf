provider "aws" {
  region = "us-east-1"
}

# EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-0c02fb55956c7d316" # Ubuntu (updated)
  instance_type = "t3.micro"

  key_name = "dev"

  tags = {
    Name = "thrift-app-server"
  }
}

# S3 Bucket
resource "aws_s3_bucket" "bucket" {
  bucket = "thrift-store-bucket-12345-unique"

  tags = {
    Name = "ThriftStoreBucket"
  }
}