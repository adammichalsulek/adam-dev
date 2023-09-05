provider "aws" {
  region = "us-east-1" #AWS region
}

# IAM user creation
resource "aws_iam_user" "example_user" {
  name = "username"

  # tags
  tags = {
    Name = "tag"
  }
}

# Attach policies to the user account
resource "aws_iam_user_policy_attachment" "example_user_attachment" {
  user       = aws_iam_user.example_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess" # Examplary policy
}

# Create a bucket
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-terraform-bucket"
  acl    = "private"
}


#terraform init
#terraform plan
#terraform apply
#terraform show
#terraform state
#terraform output