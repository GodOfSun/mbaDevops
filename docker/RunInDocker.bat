##RUM POSTGRES NA PASTA (Trocar o caminho para o caminho do seu projeto)
docker run --name devops-postgres --rm -p 5433:5432 -e POSTGRES_PASSWORD=123456  -v "D:\Projetos\Agrotopus\projetoDevops\psqldata":/var/lib/postgresql/data -e PGDATA=/var/lib/postgresql/data/pgdata -d postgres:12-alpine3.18

##BUILD DA IMAGEM
docker build -t heliomba/dev-op-app:v1.0 -f Dockerfile .

##TO RUN
docker run -it -p 8080:8080 --rm --name AplicativoTesteDevOp -d heliomba/dev-op-app:v1.0
##TO PUSH
docker push heliomba/dev-op-app:v1.0
##TOPULL
docker pull heliomba/dev-op-app:v1.0
##TO CHECK INTO
#docker run -it dev-op-app /bin/bash

##TO STOP
docker stop AplicativoTesteDevOp
docker stop devops-postgres

##Prometheus
docker run --name prometheus -p 9090:9090 --rm -v "D:\Projetos\Agrotopus\projetoDevops\prometheusData\prometheus.yml":/opt/bitnami/prometheus/conf/prometheus.yml -d bitnami/prometheus:latest

##Grafana
docker run --name grafana -p 3000:3000 --rm -v "D:\Projetos\Agrotopus\projetoDevops\grafanaData":/var/lib/grafana -d grafana/grafana:latest