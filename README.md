Resumo do ocorrido:

- Coloquei a duas imagens no docker hub:

zul9an9/pyspark-notebook:v4 e v5 (são bem identicas só mudei o usuário no diretório app para jovyan:users)

a v4 utilizei para fazer a subida da vm no docker-compose
     https://github.com/zul9an9/jupyterPysparkDocker (Este funciona)

a v5 utilizei para fazer o deployment do kubernetes (utilizei esta imagem no docker e construi o container e funcionou 
     aparecendo oos diretórios)
     https://github.com/zul9an9/jupyterpysparkkubenetes (veja neste diretório o erro em ErrorPyspark.PNG)

- No repositório do github

código do docker-compose: https://github.com/zul9an9/jupyterPysparkDocker (Este funciona)
    - aparece no linux o diretório /app e seus subdiretórios e arquivos de execução

código do kubernetes:     https://github.com/zul9an9/jupyterpysparkkubenetes
    - (veja neste diretório o erro em ErrorPyspark.PNG) e não aparece os arquivos para execução

- Veja desenhos: EstruturaBases.png e FluxoInformacao.png
  
  Em resumo a aplicação Pagamentos.ipynb constrói as bases para consulta 
      - planos de convênio - ler excel planilha planos.csv e transforma em parquet
      - clientes - ler de api de clientes e transforma em parquet
      - pagamentos - ler planilha excel pagamentos.csv e transforma em parquet juntando com pagamemntos mensais e gerais em parquet

      








