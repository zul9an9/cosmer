# imagem base de cópia do Docker Hub
FROM jupyter/pyspark-notebook:latest
# Colocar no diretório /app
# USER jovyan
WORKDIR /app

#USER root
#RUN apt-get update 
#RUN apt-get install -y curl
# Copiar os arquivos com exceção do .dockerignore
COPY . .

RUN conda install nbconvert 

#RUN apt-get update && apt-get install pandoc

#RUN jupyter notebook ipython nbconvert --to python  *.ipynb

RUN cd /app && mkdir parquet && chmod 744 -R parquet/ && chown -R jovyan parquet/

RUN cd /app && mkdir parquet/clientes && chmod 744 -R parquet/clientes/ && chown -R jovyan parquet/clientes/

RUN cd /app && mkdir parquet/planos && chmod 744 -R parquet/planos/ && chown -R jovyan parquet/planos/

RUN cd /app && mkdir parquet/pagamentos && chmod 744 -R parquet/pagamentos/ && chown -R jovyan parquet/pagamentos/

RUN cd /app && mkdir parquet/pagamentosGerais && chmod 744 -R parquet/pagamentosGerais/ && chown -R jovyan parquet/pagamentosGerais/

RUN cd /app && mkdir csv && chmod 744 -R csv/ && chown -R jovyan csv/

RUN cd /app && mkdir csv/processados && chmod 744 -R csv/processados/ && chown -R jovyan csv/processados/

#CMD /bin/bash

# Expor a porta 8888
EXPOSE 8888
