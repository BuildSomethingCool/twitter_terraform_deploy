resource "aws_sqs_queue" "twitter-streaming-queue" {
  name                        = "twitter-streaming-queue.fifo"
  fifo_queue                  = true
  content_based_deduplication = true
  tags = {
    Project = "twitter streaming pipeline"
    Name = "twitter-streaming-queue"
  }
}