## Specifies the Region your Terraform Provider will server
provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Environment = "Test22"
      Owner       = "estanqua"
      Project     = "SrcAod2025"
      IAC         = "Terraform"
      Path        = "/aws/2sp-data/data-processing-demo/src/aodsrc2025/"
    }
  }
}
