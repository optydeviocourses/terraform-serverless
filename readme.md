# AWS: Cloud-Native com Terraform & Serverless Framework

## [Acesso ao Curso na Udemy](https://www.udemy.com/course/aws-cloud-native-com-terraform-serverless-framework/learn/lecture/15820174#overview)


## **CONTA NO AWS**
- Será necessário uma conta na AWS;
- Criação do usuário de nome: terraform-serverless-framework;
- Configurar o usuário com acesso total;
- Salvar o Access Key e Secret Access Key ID.

## **AWS CLI**
### _Configurando o AWS CLI_

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
## **SERVERLESS FRAMEWORK**

### _Configurando o Serverless Framework_
```
> sudo npm install serverless -g

```

### _Testando o Serverless Framework_
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

## **TERRAFORM FRAMEWORK**

### _Configurando o Terraform Framework_
```
> mv ~/Downloads/terraform /usr/local/bin

```

### _Testando o Terraform Framework_
```
> terraform -v

## Resultado
/Volumes/ROBERTO-CD2/Dev/Projetos/aws/terraform-serverless (master ✘)✹ ᐅ terraform -v       
Terraform v0.14.4
```