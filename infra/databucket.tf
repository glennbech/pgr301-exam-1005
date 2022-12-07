# Jim; this just fails ... commented it out ! We need to figure this out later, starting new task instead...

backend "s3" {
  bucket = "analytics-${var.candidate_id}"
  key = "analytics-${var.candidate_id}.state"
  region = "eu-west-1"
}
