## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.15.0, < 1.0.2 |
| aws | ~> 3.32.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.32.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| APPDEMO\_BACKEND | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| APPDEMO\_FRONTEND | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| APP\_DEMANDFEATURES | environment variable to use as dynamic hostname for homonym component (obsolete) | `string` | `""` | no |
| AUTHENTICATION\_ADMINFRONTEND | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| AUTHENTICATION\_BACKEND | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| BACKEND | environment variable to use as dynamic hostname for homonym component (obsolete) | `string` | `""` | no |
| CDN | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| DEMAND\_PRODUCT\_FEATURES\_BACKEND | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| DEMAND\_PRODUCT\_FEATURES\_FRONTEND | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| FRONTEND | environment variable to use as dynamic hostname for homonym component (obsolete) | `string` | `""` | no |
| MAINFRONT\_FRONTEND | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| NPM\_REGISTRY | environment variable to use as dynamic hostname in nginx and from services that need to access npn registry to install packages | `string` | `""` | no |
| STORAGE\_BACKEND | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| USERPREFERENCES\_BACKEND | environment variable to use as dynamic hostname for homonym component | `string` | `""` | no |
| additional\_ecr\_repos | used to create ECR infrastructure if there is more than one | `list(any)` | `[]` | no |
| alarm\_arn | SNS topic to alert when balancer fails | `string` | n/a | yes |
| aws\_account\_id2 | needed for creating role to create infrastructure for codecommit in prod enviroment | `string` | `"092467779203"` | no |
| aws\_desired\_count | how many tasks run | `number` | `1` | no |
| aws\_ecs\_cluster | cluster name | `string` | n/a | yes |
| aws\_security\_group | one or more security group used by containers | `string` | n/a | yes |
| aws\_subnet | subnet where containers run | `string` | n/a | yes |
| branch\_name | branch used from codecommit | `string` | n/a | yes |
| codeartifact\_account\_id | domain name for codeartifact | `string` | n/a | yes |
| codeartifact\_domain | domain name for codeartifact | `string` | n/a | yes |
| codeartifact\_repository | repository name for codeartifact | `string` | n/a | yes |
| codepipeline\_bucket | bucketname used from pipeline to pass configurations needed for codebuild | `string` | n/a | yes |
| deploy\_environment | test or prod environment | `string` | n/a | yes |
| deploy\_role | role used to deploy | `string` | `"dpl-admin-role"` | no |
| deploy\_versions | enables deploying specific versions through dedicated pipeline | `string` | `true` | no |
| deployment\_max\_percent | all tasks continue to run during deploy | `number` | `100` | no |
| deployment\_min\_healthy\_percent | to deploy without use more cluster capacity | `number` | `0` | no |
| dockerhub\_user | used to allow more than 100 pull in 6 hours (should be 200) see https://docs.docker.com/docker-hub/download-rate-limit/ | `string` | n/a | yes |
| ecs\_image\_pull\_behavior | to ensure lastest images is alway pulled | `string` | `"always"` | no |
| enable\_cross\_account | flag to install accordingly to environment cross notifies between AWS accounts | `string` | n/a | yes |
| image\_repo\_name | name of repository with sbt builder image | `string` | `"fdh-sbt"` | no |
| lb\_name | balancer name | `string` | n/a | yes |
| listener | map representing listener configuration | `map(any)` | n/a | yes |
| manage\_repositories | to let this library to manage directly repository creation | `string` | `"true"` | no |
| repository\_name | name of the repository inferred by directory name | `string` | n/a | yes |
| retention\_in\_days | how many days wait before deleting logs | `number` | `30` | no |
| role\_arn | assumed to create infrastructure in enviroment where .hcl is ran | `string` | n/a | yes |
| role\_arn2 | assumed to create infrastructure in prod enviroment where codecommit repositories are expected to be | `string` | `"arn:aws:iam::092467779203:role/dpl-admin-role"` | no |
| role\_arn\_codepipeline\_name | role used by codepipeline | `string` | n/a | yes |
| role\_arn\_task\_name | role used by container | `string` | `"dpl-task-role"` | no |
| s3\_aws\_access\_key\_id | account used to access scala libraries | `string` | `"AKIAQRJF3PUJGXL5OJLD"` | no |
| s3\_aws\_role\_arn | role used to access scala libraries | `string` | `"arn:aws:iam::092467779203:role/FDH-Repository-Role"` | no |
| s3\_cache | s3 bucket cache name | `string` | n/a | yes |
| sbt\_image\_version | sbt version used | `string` | `"0.1"` | no |
| sbt\_opts | parameters needed to compile without errors | `string` | `"-XX:+CMSClassUnloadingEnabled -Xmx2G -Xss8M"` | no |
| ssl\_certificate\_arn\_name | ssl certificate used by  listener if HTTPS | `string` | `""` | no |
| tag | tag to be added | `map(any)` | <pre>{<br>  "Project": "FactoryDataHub"<br>}</pre> | no |
| tag\_alt | tag to be added with the alternative account a.k.a prod one | `map(any)` | <pre>{<br>  "Project": "FactoryDataHub"<br>}</pre> | no |
| target\_group | map representing target group configuration | `map(any)` | n/a | yes |
| target\_group\_prefix | short string used to differentiate each target group prefix | `string` | n/a | yes |
| vpc\_id | id representing AWS Virtual Private Cloud | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| role\_arn | default role |
| role\_arn2 | secondary role, used for cross account |

