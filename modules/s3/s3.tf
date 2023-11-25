resource "aws_s3_bucket" "my_first_clod_bucket" {
    bucket = "s3-bucket-version36"
    count = 2

    tags = {
      name="my_assignment_bucket"
      Environment="Dev"
    }
}