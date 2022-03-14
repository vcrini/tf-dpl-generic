module "ecr_immutable" {
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
  time_sleep           = "15s"
  source               = "git::https://bitbucket.org/valeri0/ecr.git?ref=0.4.0"
  #source = "/Users/vcrini/Repositories/terraform-modules/ecr"
}
module "ecr_mutable" {
  name       = formatlist("%s-%s", local.ecr_repositories, "snapshot")
  policy     = <<EOF
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
  time_sleep = "15s"
  source     = "git::https://bitbucket.org/valeri0/ecr.git?ref=0.4.0"
  #source = "/Users/vcrini/Repositories/terraform-modules/ecr"
}
module "deploy" {
  branch_name             = var.branch_name
  buildspec               = local.buildspec
  cluster_name            = var.aws_ecs_cluster
  codepipeline_bucket     = var.codepipeline_bucket
  deploy_environment      = var.deploy_environment
  deployspec              = local.deployspec
  force_approve           = var.force_approve
  kms_arn                 = var.kms_arn
  image                   = "aws/codebuild/amazonlinux2-x86_64-standard:3.0"
  poll_for_source_changes = "false"
  prefix                  = var.prefix
  repository_name         = local.repository_name
  role_arn                = local.role_arn
  role_arn_codebuild      = local.role_arn_codebuild
  role_arn_codepipeline   = local.role_arn_codepipeline
  role_arn_source         = local.role_arn_source
  s3_cache                = var.s3_cache
  # source                  = "/Users/vcrini/Repositories/terraform-modules/deploy_x_application"
  source = "git::https://bitbucket.org/valeri0/deploy_x_application?ref=1.0.0"
}

resource "aws_cloudwatch_log_group" "log" {
  for_each          = toset([module.deploy.cloudwatch_build_log, module.deploy.cloudwatch_deploy_log])
  name              = each.value
  retention_in_days = var.retention_in_days
}

module "balancer" {
  alarm_arn            = var.alarm_arn
  default_cname        = var.default_cname
  deploy_environment   = var.deploy_environment
  repository_name      = local.repository_name
  deregistration_delay = 120
  listener             = var.listener
  lb_name              = var.lb_name
  prefix               = var.prefix
  # source = "/Users/vcrini/Repositories/terraform-modules//load_balancer"
  source              = "git::https://bitbucket.org/valeri0/load_balancer.git//?ref=1.0.0"
  ssl_certificate_arn = local.ssl_certificate_arn
  target_group        = var.target_group
  vpc_id              = var.vpc_id
}
