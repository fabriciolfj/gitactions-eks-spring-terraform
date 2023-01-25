# gitactions-eks-spring-terraform

## Requisitos
- criar um token em https://app.terraform.io/app/settings/tokens
- adicionar o token acima a variavel secret de nome TF_API_TOKEN, no repositorio github
- adicionar as variaveis do docker DOCKERHUB_TOKEN e DOCKERHUB_USERNAME

## Route53
- podemos registrar um dominio e usar ele como um alias (apelido) vinculado dominio criado para o load balance
- dessa forma ao bater no dominio nosso, ele redirecionará ao load balance
- no arquivo criar-route-53.txt explica como efetuar tal processo.