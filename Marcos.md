# Instruções Docker

## Iniciar aplicação (Terminal) - joao

```shell
.\startDocker.bat
```

## Iniciar docker compose

```shell
docker compose up -d
```

## Encerrar docker compose

```shell
docker compose down
```

## Excluir cache de volumes (dados)
 
```shell
docker compose down -v
```

## Excluir imagem específica
 
```shell
docker rmi <image-id-ou-name>
```

## Excluir imagens não utilizadas
 
```shell
docker image prune -a
```

## Criar imagem
 
```shell
docker build -t nomequiser .
```

## Criar Tag
 
```shell
docker tag nometag userdockerhub/repository:latest
```

## Enviar Tag Docker Hub
 
```shell
docker push usernamedockerhub/repository:latest
```

## Atualizar Docker (imagem) - local
 
```shell
docker build -t usernamedockerhub/repository:latest .
```

## Construir docker compose novamente
 
```shell
docker-compose up --build
```

## Rodar docker compose local-dev
 
```shell
docker-compose -f docker-compose.dev.yaml up
```

## Go local, sem container
 
```go
conexão sql = dsn := "root:teste_senha@tcp(127.0.0.1:3306)/teste_banco"
```

## Go Container, imagem
 
```go
dsn := "root:teste_senha@tcp(mysql:3306)/teste_banco"
```
