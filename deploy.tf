module "ecr_immutable" {
  force_delete         = var.force_ecr_delete
  image_tag_mutability = "IMMUTABLE"
  name                 = local.ecr_repositories
  policy               = <<EOF
{
    "rules": [
        {
            "rulePriority": 1,
            "description": "Keep no more than 5 images ",
            "selection": {
                "countNumber": 5,
                "countType": "imageCountMoreThan",
                "tagStatus": "any"
            },
            "action": {
                "type": "expire"
            }
        }    
      ]
}
EOF
  source               = "git::https://bitbucket.org/valeri0/ecr.git?ref=1.1.0"
  #source = "/Users/vcrini/Repositories/terraform-modules/ecr"
}
module "ecr_mutable" {
  force_delete = var.force_ecr_delete
  name         = formatlist("%s-%s", local.ecr_repositories, "snapshot")
  policy       = <<EOF
{
    "rules": [
        {
            "rulePriority": 1,
            "description": "Keep last 3 images",
            "selection": {
                "tagStatus": "any",
                "countType": "imageCountMoreThan",
                "countNumber": 3
            },
            "action": {
                "type": "expire"
            }
        }    
      ]
}
EOF
  source       = "git::https://bitbucket.org/valeri0/ecr.git?ref=1.1.0"
  # source = "/Users/vcrini/Repositories/terraform-modules/ecr"
}
module "deploy" {
  branch_name            = var.branch_name
  buildspec              = local.buildspec
  codepipeline_bucket    = var.codepipeline_bucket
  env_in_repository_name = var.env_in_repository_name
  deploy_environment     = var.deploy_environment
  deploy_template_name   = var.deploy_template_name
  deployspec             = local.deployspec
  force_approve          = var.force_approve
  kms_arn                = var.kms_arn
  # image                   = "aws/codebuild/amazonlinux2-x86_64-standard:4.0"
  image                   = "aws/codebuild/standard:5.0"
  poll_for_source_changes = "false"
  repository_name         = local.repository_name
  role_arn_codebuild      = local.role_arn_codebuild
  role_arn_codepipeline   = local.role_arn_codepipeline
  role_arn_source         = local.role_arn_source
  s3_cache                = var.s3_cache
  shared_account          = var.shared_account
  # source                  = "/Users/vcrini/Repositories/terraform-modules/deploy_x_application"
  source = "git::https://bitbucket.org/valeri0/deploy_x_application?ref=1.7.0"
}

resource "aws_cloudwatch_log_group" "log" {
  for_each          = toset([module.deploy.cloudwatch_build_log, module.deploy.cloudwatch_deploy_log])
  name              = each.value
  retention_in_days = var.retention_in_days
}
# if a lambda then created lambda log group
resource "aws_cloudwatch_log_group" "lambda" {
  count             = var.lambda_log_group == "" ? 0 : 1
  name              = var.lambda_log_group
  retention_in_days = var.retention_in_days
}

module "balancer" {
  alarm_arn            = var.alarm_arn
  count                = var.lb_name == "" ? 0 : 1
  default_cname        = var.default_cname
  deploy_environment   = var.deploy_environment
  repository_name      = local.repository_name
  deregistration_delay = 120
  listener             = var.listener
  lb_name              = var.lb_name
  prefix               = var.prefix
  #source               = "/Users/vcrini/Repositories/terraform-modules//load_balancer"
  source              = "git::https://bitbucket.org/valeri0/load_balancer.git//?ref=1.8.1"
  ssl_certificate_arn = local.ssl_certificate_arn
  ssl_policy          = "ELBSecurityPolicy-TLS13-1-2-2021-06"
  target_group        = var.target_group
  vpc_id              = var.vpc_id
}
