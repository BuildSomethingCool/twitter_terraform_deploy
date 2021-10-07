resource "aws_glue_catalog_database" "twitter_streaming_raw" {
  name = "twitter_streaming_raw"
  description = "Raw database for all twitter streaming data"
}

resource "aws_glue_catalog_database" "twitter_streaming_modeled" {
  name = "twitter_streaming_modeled"
  description = "Modeled database for all twitter streaming data"
}

resource "aws_glue_catalog_database" "twitter_streaming_analyzed" {
  name = "twitter_streaming_analyzed"
  description = "Post-analysis database for all twitter streaming data"
}