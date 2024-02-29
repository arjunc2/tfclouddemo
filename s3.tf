resource "aws_s3_bucket" "example" {
  bucket = "nags390147433-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
