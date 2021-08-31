resource "aws_s3_bucket" "raw" {
  bucket = "twitter-streaming-raw-2021"
  acl    = "private"

  tags = {
    Project = "twitter streaming pipeline"
    Name = "twitter-streaming-raw-2021"
  }
}

resource "aws_s3_bucket" "modeled" {
  bucket = "twitter-streaming-modeled-2021"
  acl    = "private"

  tags = {
    Name = "twitter-streaming-modeled-2021"
    Project = "twitter streaming pipeline"
  }
}
