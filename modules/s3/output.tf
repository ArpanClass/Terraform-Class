output "s3_id" {
  value = [aws_s3_bucket.my_first_clod_bucket.*.id]
}

output "s3_arn" {
  value = [aws_s3_bucket.my_first_clod_bucket.*.arn]
}