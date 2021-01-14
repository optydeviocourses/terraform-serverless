# AWS: Cloud-Native com Terraform & Serverless Framework

## [Acesso ao Curso na Udemy](https://www.udemy.com/course/aws-cloud-native-com-terraform-serverless-framework/learn/lecture/15820174#overview)

## 1 **CONTA NO AWS**

- Será necessário uma conta na AWS;
- Criação do usuário de nome: terraform-serverless-framework;
- Configurar o usuário com acesso total;
- Salvar o Access Key e Secret Access Key ID.

## 1.1 **AWS CLI**
### 1.1.1 _Configurando o AWS CLI_

```
> pip3 install awscli --upgrade --user # awscli
> pip3 install --upgrade pip # python 3
> pip install --upgrade pip # python 2.7

## AWS CONFIGURE
## usuario: terraform-serverless
> aws configure 
> AWS Access Key ID [****************RVCA]: AKIAXMDIO7KWZQGIPYNK
> AWS Secret Access Key [****************ZK4l]: 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
> Default region name [sa-east-1]: 
> Default output format [json]: 
```
## 2 **SERVERLESS FRAMEWORK**

### 2.1 _Configurando o Serverless Framework_

```
> sudo npm install serverless -g

```
### 2.2 _Testando o Serverless Framework_

```
> serverless -v
> sls -v  # Alias

## Resultados
/Volumes/ROBERTO-CD2/Dev/Projetos/aws/terraform-serverless (master ✘)✹ ᐅ sls -v
Framework Core: 2.17.0
Plugin: 4.4.1
SDK: 2.3.2
Components: 3.4.3
```
### 2.3 _Comandos do Serverless Framework_

#### - _sls deploy_
```
> sls create --template aws-nodejs --path hello-world

## Resultado
Serverless: Generating boilerplate...
Serverless: Generating boilerplate in "/Volumes/ROBERTO-CD2/Dev/Estudos/TI/clouds/aws/terraform-serverless/hello-world"
 _______                             __
|   _   .-----.----.--.--.-----.----|  .-----.-----.-----.
|   |___|  -__|   _|  |  |  -__|   _|  |  -__|__ --|__ --|
|____   |_____|__|  \___/|_____|__| |__|_____|_____|_____|
|   |   |             The Serverless Application Framework
|       |                           serverless.com, v2.17.0
 -------'

Serverless: Successfully generated boilerplate for template: "aws-nodejs"

```

#### - _sls deploy_
```
> sls deploy

## Resultado

Serverless: Packaging service...
Serverless: Excluding development dependencies...
Serverless: Creating Stack...
Serverless: Checking Stack create progress...
........
Serverless: Stack create finished...
Serverless: Uploading CloudFormation file to S3...
Serverless: Uploading artifacts...
Serverless: Uploading service hello-world.zip file to S3 (390 B)...
Serverless: Validating template...
Serverless: Updating Stack...
Serverless: Checking Stack update progress...

```

#### - _sls remove_
```
> sls remove

## Resultado

Serverless: Getting all objects in S3 bucket...
Serverless: Removing objects in S3 bucket...
Serverless: Removing Stack...
Serverless: Checking Stack delete progress...

Serverless: Stack delete finished...

```

#### - _sls --stage prod_

```
> sls --stage prod

```
## 3 **TERRAFORM FRAMEWORK**

### 3.1 _Configurando o Terraform Framework_
```
> mv ~/Downloads/terraform /usr/local/bin

```

### - _sls remove --stage prod_

```
> sls remove --stage prod

```

### 3.2 _Testando o Terraform Framework_
```
> terraform -v

## Resultado
/Volumes/ROBERTO-CD2/Dev/Projetos/aws/terraform-serverless (master ✘)✹ ᐅ terraform -v       
Terraform v0.14.4
```

### 3.3 _Comandos do Terraform Framewiork_

#### - _terraform init_

- Iniciando o terraform na pasta atual

```
> terraform init

## Resultado

Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v3.23.0...
- Installed hashicorp/aws v3.23.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

```

#### - _terraform plan_

- Verificando o Plano criado com o Terraform 

```
> terraform plan 

## Resultado

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_dynamodb_table.hello_wold will be created
  + resource "aws_dynamodb_table" "hello_wold" {
      + arn              = (known after apply)
      + billing_mode     = "PROVISIONED"
      + hash_key         = "id"
      + id               = (known after apply)
      + name             = "hello-wold"
      + read_capacity    = 1
      + stream_arn       = (known after apply)
      + stream_label     = (known after apply)
      + stream_view_type = (known after apply)
      + write_capacity   = 1

      + attribute {
          + name = "id"
          + type = "S"
        }

      + point_in_time_recovery {
          + enabled = (known after apply)
        }

      + server_side_encryption {
          + enabled     = (known after apply)
          + kms_key_arn = (known after apply)
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.
```
#### - _terraform apply_

- Aplicar todo os recursos do projeto criado em terraform na AWS

```
> terraform apply

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_dynamodb_table.hello_wold will be created
  + resource "aws_dynamodb_table" "hello_wold" {
      + arn              = (known after apply)
      + billing_mode     = "PROVISIONED"
      + hash_key         = "id"
      + id               = (known after apply)
      + name             = "hello-wold"
      + read_capacity    = 1
      + stream_arn       = (known after apply)
      + stream_label     = (known after apply)
      + stream_view_type = (known after apply)
      + write_capacity   = 1

      + attribute {
          + name = "id"
          + type = "S"
        }

      + point_in_time_recovery {
          + enabled = (known after apply)
        }

      + server_side_encryption {
          + enabled     = (known after apply)
          + kms_key_arn = (known after apply)
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_dynamodb_table.hello_wold: Creating...
aws_dynamodb_table.hello_wold: Creation complete after 8s [id=hello-wold]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

```

#### - _terraform apply -auto-approve_

- Não apresentar o PLAN antes de fazer o Apply na infraestrutura.

```
> terraform apply -auto-approve

## Resultado

aws_dynamodb_table.hello_wold: Refreshing state... [id=hello-wold]

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.


```

- Mudando o nome da Tabela de hello-wold para **hello_wold**


```
> terraform apply -auto-approve

## Resultado

aws_dynamodb_table.hello_wold: Refreshing state... [id=hello-wold]
aws_dynamodb_table.hello_wold: Destroying... [id=hello-wold]
aws_dynamodb_table.hello_wold: Destruction complete after 3s
aws_dynamodb_table.hello_wold: Creating...
aws_dynamodb_table.hello_wold: Creation complete after 8s [id=hello_wold]

```

#### - _terraform destroy_

- Distruir toda a infraestrutura criada com o Terraform.

```
> terraform destroy

## Resultado

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_dynamodb_table.hello_wold will be destroyed
  - resource "aws_dynamodb_table" "hello_wold" {
      - arn            = "arn:aws:dynamodb:us-east-1:507025226413:table/hello_wold" -> null
      - billing_mode   = "PROVISIONED" -> null
      - hash_key       = "id" -> null
      - id             = "hello_wold" -> null
      - name           = "hello_wold" -> null
      - read_capacity  = 1 -> null
      - stream_enabled = false -> null
      - write_capacity = 1 -> null

      - attribute {
          - name = "id" -> null
          - type = "S" -> null
        }

      - point_in_time_recovery {
          - enabled = false -> null
        }

      - ttl {
          - enabled = false -> null
        }
    }

Plan: 0 to add, 0 to change, 1 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

aws_dynamodb_table.hello_wold: Destroying... [id=hello_wold]
aws_dynamodb_table.hello_wold: Destruction complete after 2s

Destroy complete! Resources: 1 destroyed.

```

#### - _terraform destroy -auto-approve

```
> terraform destroy

## Resultado
module.hello.aws_dynamodb_table.hello_wold: Destroying... [id=dev-hello-wold]
module.hello.aws_dynamodb_table.hello_wold: Destruction complete after 2s

```


### 3.4 _VARIAVEIS no Terraform_

3.4.1  Arquivo: variables.tf

- Arquivo com a configuração das variaveis.

```
variable "environment" {

  type        = "string"
  description = "Tabela Hello World"
  default     = "dev"  
  
}

```

3.4.2 Arquivo: variables.auto.tfvars

- Arquivo com os valores das variáveis definidas em variable.tf

```
environment = "dev"

```

3.4.3 Arquivo: main.ft

```
resource "aws_dynamodb_table" "hello_wold" {
  
  name = "${var.environment}_hello_wold"
  hash_key = "id"
  write_capacity = 1
  read_capacity = 1

  attribute {
    name = "id"
    type = "S"
  }
}

```

### 3.5 _MÓDULOS no Terraform_

+environments
  - dev
  - pro
+infra
  - hello

3.5.1  Arquivos: ./terraform/environments/dev/main.tf 

- Arquivo com a configuração do módulo em desenvolvimento.

```
module "hello" {
  
  source      = "../../infra/hello"
  environment = "${var.environment}"
  write_capacity = 1
  read_capacity = 1
  
}
```

3.5.2 Arquivos: e ./terraform/environments/prod/main.tf

- Arquivo com a configuração do módulo em produção.

```
module "hello" {
  
  source      = "../../infra/hello"
  environment = "${var.environment}"
  write_capacity = 10
  read_capacity = 10
  
}
```

3.5.2 Arquivo: ./terraform/infra/hello/aws_dynamodb_table.tf

- Injeção das variaveis desclaradas no ./terraform/infra/hello/**variables.tf**
```
resource "aws_dynamodb_table" "hello_wold" {
  
  name = "${var.environment}-hello-wold"
  hash_key = "id"
 
  attribute {
    name = "id"
    type = "S"
  }

  write_capacity = "${var.write_capacity}"
  read_capacity = "${var.read_capacity}"

}
```

3.5.3  Arquivo: ./terraform/infra/hello/**variable.tf**

- Declaração das variaveis para a injeção

```
variable "environment" {
  
}

variable "read_capacity" {


}

variable "write_capacity" {

 
}
```

terraform destroy -auto-approve
