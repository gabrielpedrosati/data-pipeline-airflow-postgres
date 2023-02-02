# Data Pipeline com Airflow e Postgres

## Informações Gerais

Este projeto tem como objetivo demonstrar um processo automatizado e periódico de data pipeline que acontece no dia a dia de um Engenheiro de Dados, utilizando uma das ferramentas mais requisitadas do mercado: Apache Airflow, para gerenciar e orquestar o pipeline.

## Missão:

Possuo um arquivo csv localizado em data/ chamado "orders_detail.csv" e 13 tabelas localizadas no Postgres.

Realizar a extração dos dados do arquivo "orders_detail.csv", armazenar dentro de outra pasta que possua a data da extração, exemplo: data/csv/2023-02-01/orders_detail.csv.

Realizar a extração das 13 tabelas do Postgres do banco de dados "northwind", armazenar as tabelas no formato csv dentro de outra pasta que possua a data de extração, exemplo: data/postgres/2023-02-01/orders.csv.

Após isso, criar 2 tabelas (orders e order_details) no banco de dados "southwind", e armazenar os arquivos "data/csv/{extract-date}/orders_detail.csv" e "data/postgres/{extract-date}/orders.csv" nas respectivas tabelas.

## Observações:
- O pipeline precisa ser executado todos os dias - para isso foi definido o intervalo de tempo como "@daily", garantindo a execução diária no horário às 00h00 UTC.
- Execução do passo 2 depende do passo 1 - Com o Airflow é possível definir dependências entre as tarefas. Sendo assim, uma tarefa só será executada após a outra, e caso uma falhe será possível identificar através do Web Server.
!["Failed"](/imgs/failed.png)

## Steps
!["Steps"](/imgs/steps.png)

## Airflow DAG
!["DAG"](/imgs/dag.png)

## Tecnologias Utilizadas
- Docker;
- Airflow;
- Postgres;
- Pandas;
- SQLAlchemy;

## Execução

É necessário ter instalado o docker e docker compose.

Baixar repositório
```
git clone https://github.com/gabrielpedrosati/etl-postgres.git
```

Criar pasta logs no terminal
```
mkdir logs
```

Iniciar containers
```
docker compose up
```

Acessar Web Server no navegador
```
localhost:8080

Credenciais
user: airflow
password: airflow
```

Executar a DAG batch_pipeline

## Contato

Criado por [Gabriel Pedrosa](https://www.linkedin.com/in/gabrielpedrosati/).