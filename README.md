## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.0, < 2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.32.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.32.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_balancer"></a> [balancer](#module\_balancer) | git::https://bitbucket.org/valeri0/load_balancer.git// | 0.6.0 |
| <a name="module_deploy"></a> [deploy](#module\_deploy) | git::https://bitbucket.org/valeri0/deploy_x_application | 0.7.0 |
| <a name="module_ecr_immutable"></a> [ecr\_immutable](#module\_ecr\_immutable) | git::https://bitbucket.org/valeri0/ecr.git | 0.2.0 |
| <a name="module_ecr_mutable"></a> [ecr\_mutable](#module\_ecr\_mutable) | git::https://bitbucket.org/valeri0/ecr.git | 0.2.0 |

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.log](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_APPDEMO_BACKEND"></a> [APPDEMO\_BACKEND](#input\_APPDEMO\_BACKEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_APPDEMO_FRONTEND"></a> [APPDEMO\_FRONTEND](#input\_APPDEMO\_FRONTEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_AUTHENTICATION_ADMINFRONTEND"></a> [AUTHENTICATION\_ADMINFRONTEND](#input\_AUTHENTICATION\_ADMINFRONTEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_AUTHENTICATION_BACKEND"></a> [AUTHENTICATION\_BACKEND](#input\_AUTHENTICATION\_BACKEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_BASEDATATABLES_BACKEND"></a> [BASEDATATABLES\_BACKEND](#input\_BASEDATATABLES\_BACKEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_BASEDATATABLES_FRONTEND"></a> [BASEDATATABLES\_FRONTEND](#input\_BASEDATATABLES\_FRONTEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_CDN"></a> [CDN](#input\_CDN) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_CRON_ADMINFRONTEND"></a> [CRON\_ADMINFRONTEND](#input\_CRON\_ADMINFRONTEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_CRON_BACKEND"></a> [CRON\_BACKEND](#input\_CRON\_BACKEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_DEMAND_ADJUSTMENT_BACKEND"></a> [DEMAND\_ADJUSTMENT\_BACKEND](#input\_DEMAND\_ADJUSTMENT\_BACKEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_DEMAND_ADJUSTMENT_FRONTEND"></a> [DEMAND\_ADJUSTMENT\_FRONTEND](#input\_DEMAND\_ADJUSTMENT\_FRONTEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_DEMAND_PRODUCT_FEATURES_BACKEND"></a> [DEMAND\_PRODUCT\_FEATURES\_BACKEND](#input\_DEMAND\_PRODUCT\_FEATURES\_BACKEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_DEMAND_PRODUCT_FEATURES_FRONTEND"></a> [DEMAND\_PRODUCT\_FEATURES\_FRONTEND](#input\_DEMAND\_PRODUCT\_FEATURES\_FRONTEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_FORECAST_BACKEND"></a> [FORECAST\_BACKEND](#input\_FORECAST\_BACKEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_FORECAST_FRONTEND"></a> [FORECAST\_FRONTEND](#input\_FORECAST\_FRONTEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_KERINGAI_BACKEND"></a> [KERINGAI\_BACKEND](#input\_KERINGAI\_BACKEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_KERINGAI_FRONTEND"></a> [KERINGAI\_FRONTEND](#input\_KERINGAI\_FRONTEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_MAINFRONT_FRONTEND"></a> [MAINFRONT\_FRONTEND](#input\_MAINFRONT\_FRONTEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_MASTERITEM_BACKEND"></a> [MASTERITEM\_BACKEND](#input\_MASTERITEM\_BACKEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_MASTERITEM_FRONTEND"></a> [MASTERITEM\_FRONTEND](#input\_MASTERITEM\_FRONTEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_NOTIFICATION_ADMINFRONTEND"></a> [NOTIFICATION\_ADMINFRONTEND](#input\_NOTIFICATION\_ADMINFRONTEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_NOTIFICATION_BACKEND"></a> [NOTIFICATION\_BACKEND](#input\_NOTIFICATION\_BACKEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_SALESWINDOWS_BACKEND"></a> [SALESWINDOWS\_BACKEND](#input\_SALESWINDOWS\_BACKEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_SALESWINDOWS_FRONTEND"></a> [SALESWINDOWS\_FRONTEND](#input\_SALESWINDOWS\_FRONTEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_SEASONALITY_BACKEND"></a> [SEASONALITY\_BACKEND](#input\_SEASONALITY\_BACKEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_SEASONALITY_FRONTEND"></a> [SEASONALITY\_FRONTEND](#input\_SEASONALITY\_FRONTEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_SO99_BACKEND"></a> [SO99\_BACKEND](#input\_SO99\_BACKEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_SO99_FRONTEND"></a> [SO99\_FRONTEND](#input\_SO99\_FRONTEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_STORAGE_BACKEND"></a> [STORAGE\_BACKEND](#input\_STORAGE\_BACKEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_USERPREFERENCES_BACKEND"></a> [USERPREFERENCES\_BACKEND](#input\_USERPREFERENCES\_BACKEND) | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| <a name="input_additional_ecr_repos"></a> [additional\_ecr\_repos](#input\_additional\_ecr\_repos) | used to create ECR infrastructure if there is more than one | `list(any)` | `[]` | no |
| <a name="input_alarm_arn"></a> [alarm\_arn](#input\_alarm\_arn) | SNS topic to alert when balancer fails | `string` | n/a | yes |
| <a name="input_aws_account_id2"></a> [aws\_account\_id2](#input\_aws\_account\_id2) | needed for creating role to create infrastructure for codecommit in prod enviroment | `string` | `"092467779203"` | no |
| <a name="input_aws_desired_count"></a> [aws\_desired\_count](#input\_aws\_desired\_count) | how many tasks run | `number` | `1` | no |
| <a name="input_aws_ecs_cluster"></a> [aws\_ecs\_cluster](#input\_aws\_ecs\_cluster) | cluster name | `string` | n/a | yes |
| <a name="input_aws_security_group"></a> [aws\_security\_group](#input\_aws\_security\_group) | one or more security group used by containers | `string` | n/a | yes |
| <a name="input_aws_subnet"></a> [aws\_subnet](#input\_aws\_subnet) | subnet where containers run | `string` | n/a | yes |
| <a name="input_branch_name"></a> [branch\_name](#input\_branch\_name) | branch used from codecommit | `string` | n/a | yes |
| <a name="input_codeartifact_account_id"></a> [codeartifact\_account\_id](#input\_codeartifact\_account\_id) | domain name for codeartifact | `string` | n/a | yes |
| <a name="input_codeartifact_domain"></a> [codeartifact\_domain](#input\_codeartifact\_domain) | domain name for codeartifact | `string` | n/a | yes |
| <a name="input_codeartifact_repository"></a> [codeartifact\_repository](#input\_codeartifact\_repository) | repository name for codeartifact | `string` | n/a | yes |
| <a name="input_codepipeline_bucket"></a> [codepipeline\_bucket](#input\_codepipeline\_bucket) | bucketname used from pipeline to pass configurations needed for codebuild | `string` | n/a | yes |
| <a name="input_default_cname"></a> [default\_cname](#input\_default\_cname) | cname to use if not specified insied target\_groups | `string` | n/a | yes |
| <a name="input_deploy_environment"></a> [deploy\_environment](#input\_deploy\_environment) | test or prod environment | `string` | n/a | yes |
| <a name="input_deploy_role"></a> [deploy\_role](#input\_deploy\_role) | role used to deploy | `string` | `"dpl-admin-role"` | no |
| <a name="input_deploy_versions"></a> [deploy\_versions](#input\_deploy\_versions) | enables deploying specific versions through dedicated pipeline | `string` | `true` | no |
| <a name="input_deployment_max_percent"></a> [deployment\_max\_percent](#input\_deployment\_max\_percent) | all tasks continue to run during deploy | `number` | `100` | no |
| <a name="input_deployment_min_healthy_percent"></a> [deployment\_min\_healthy\_percent](#input\_deployment\_min\_healthy\_percent) | to deploy without use more cluster capacity | `number` | `0` | no |
| <a name="input_dockerhub_user"></a> [dockerhub\_user](#input\_dockerhub\_user) | used to allow more than 100 pull in 6 hours (should be 200) see https://docs.docker.com/docker-hub/download-rate-limit/ | `string` | n/a | yes |
| <a name="input_ecs_image_pull_behavior"></a> [ecs\_image\_pull\_behavior](#input\_ecs\_image\_pull\_behavior) | to ensure lastest images is alway pulled | `string` | `"always"` | no |
| <a name="input_enable_cross_account"></a> [enable\_cross\_account](#input\_enable\_cross\_account) | flag to install accordingly to environment cross notifies between AWS accounts | `string` | n/a | yes |
| <a name="input_image_repo_name"></a> [image\_repo\_name](#input\_image\_repo\_name) | name of repository with sbt builder image | `string` | `"fdh-sbt"` | no |
| <a name="input_lb_name"></a> [lb\_name](#input\_lb\_name) | balancer name | `string` | n/a | yes |
| <a name="input_listener"></a> [listener](#input\_listener) | map representing listener configuration | `map(any)` | n/a | yes |
| <a name="input_manage_repositories"></a> [manage\_repositories](#input\_manage\_repositories) | to let this library to manage directly repository creation | `string` | `"true"` | no |
| <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name) | name of the repository inferred by directory name | `string` | n/a | yes |
| <a name="input_retention_in_days"></a> [retention\_in\_days](#input\_retention\_in\_days) | how many days wait before deleting logs | `number` | `30` | no |
| <a name="input_role_arn"></a> [role\_arn](#input\_role\_arn) | assumed to create infrastructure in enviroment where .hcl is ran | `string` | n/a | yes |
| <a name="input_role_arn2"></a> [role\_arn2](#input\_role\_arn2) | assumed to create infrastructure in prod enviroment where codecommit repositories are expected to be | `string` | `"arn:aws:iam::092467779203:role/dpl-admin-role"` | no |
| <a name="input_role_arn_codepipeline_name"></a> [role\_arn\_codepipeline\_name](#input\_role\_arn\_codepipeline\_name) | role used by codepipeline | `string` | n/a | yes |
| <a name="input_role_arn_task_name"></a> [role\_arn\_task\_name](#input\_role\_arn\_task\_name) | role used by container | `string` | `"dpl-task-role"` | no |
| <a name="input_s3_aws_access_key_id"></a> [s3\_aws\_access\_key\_id](#input\_s3\_aws\_access\_key\_id) | account used to access scala libraries | `string` | `"AKIAQRJF3PUJGXL5OJLD"` | no |
| <a name="input_s3_aws_role_arn"></a> [s3\_aws\_role\_arn](#input\_s3\_aws\_role\_arn) | role used to access scala libraries | `string` | `"arn:aws:iam::092467779203:role/FDH-Repository-Role"` | no |
| <a name="input_s3_cache"></a> [s3\_cache](#input\_s3\_cache) | s3 bucket cache name | `string` | n/a | yes |
| <a name="input_sbt_image_version"></a> [sbt\_image\_version](#input\_sbt\_image\_version) | sbt version used | `string` | `"0.1"` | no |
| <a name="input_sbt_opts"></a> [sbt\_opts](#input\_sbt\_opts) | parameters needed to compile without errors | `string` | `"-XX:+CMSClassUnloadingEnabled -Xmx2G -Xss8M"` | no |
| <a name="input_ssl_certificate_arn_name"></a> [ssl\_certificate\_arn\_name](#input\_ssl\_certificate\_arn\_name) | ssl certificate used by  listener if HTTPS | `string` | `""` | no |
| <a name="input_tag"></a> [tag](#input\_tag) | tag to be added | `map(any)` | <pre>{<br>  "Project": "FactoryDataHub"<br>}</pre> | no |
| <a name="input_tag_alt"></a> [tag\_alt](#input\_tag\_alt) | tag to be added with the alternative account a.k.a prod one | `map(any)` | <pre>{<br>  "Project": "FactoryDataHub"<br>}</pre> | no |
| <a name="input_target_group"></a> [target\_group](#input\_target\_group) | map representing target group configuration | `map(any)` | n/a | yes |
| <a name="input_target_group_prefix"></a> [target\_group\_prefix](#input\_target\_group\_prefix) | short string used to differentiate each target group prefix | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | id representing AWS Virtual Private Cloud | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | default role |
| <a name="output_role_arn2"></a> [role\_arn2](#output\_role\_arn2) | secondary role, used for cross account |
