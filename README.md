# Instruções Docker

## Iniciar aplicação (Terminal)

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
