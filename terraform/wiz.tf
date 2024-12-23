module "wiz" {
  source             = "https://s3-us-east-2.amazonaws.com/wizio-public/deployment-v2/aws/wiz-aws-native-terraform-terraform-module.zip"
  external-id        = "b1af0ff4-f15b-46f0-aa77-d928f254babe"
  data-scanning      = true
  lightsail-scanning = true
  eks-scanning       = true
  remote-arn         = "arn:aws:iam::197171649850:role/prod-us20-AssumeRoleDelegator"
}

output "wiz_connector_arn" {
  value = module.wiz.role_arn
}