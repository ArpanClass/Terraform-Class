module "aws_s3_bucket" {
  source = "./modules/s3"
}

module "create_ec2" {
  source = "./modules/ec2" 
}

module "aws_iam_user_policy" {
  source = "./modules/iam"
}
