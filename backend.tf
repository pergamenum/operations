terraform {
  backend "gcs" {
    # Do not set the bucket name here. 
    # Set it manually during terraform init.
    # Bucket name should be of the form: "terraform-state-{GPC_PROJECT_ID}".
  }
}
