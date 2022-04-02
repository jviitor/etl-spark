import sys
from operator import add
from pyspark.sql import SparkSession, Row
import psycopg2
import pandas as pd
from pyspark.sql import SparkSession
from sqlalchemy import create_engine
 
spark = SparkSession\
 .builder\
 .appName("Spark")\
 .getOrCreate()
 
spark = SparkSession.builder.master("local").appName("Spark").getOrCreate()

engine = create_engine(
    "postgresql+psycopg2://postgres:123@localhost/postgres?client_encoding=utf8")
df_associado = pd.read_sql('select * from associado', engine)
df_movimento = pd.read_sql('select * from movimento', engine)
df_conta = pd.read_sql('select * from conta', engine)
df_cartao = pd.read_sql('select * from cartao', engine)

df_associado = spark.createDataFrame(df_associado)
df_movimento = spark.createDataFrame(df_movimento)
df_conta = spark.createDataFrame(df_conta)
df_cartao = spark.createDataFrame(df_cartao)

df_associado.createOrReplaceTempView("associado")
df_conta.createOrReplaceTempView("conta")
df_cartao.createOrReplaceTempView("cartao")
df_movimento.createOrReplaceTempView("movimento")

df_to_write = spark.sql('''SELECT associado.nome AS nome_associado, associado.sobrenome AS sobrenome_associado, associado.idade AS idade_associado,
	movimento.vlr_transacao AS vlr_transacao_movimento, movimento.des_transacao AS des_transacao_movimento, movimento.data_movimento AS data_movimento,
	cartao.num_cartao AS numero_cartao, cartao.nom_impresso AS nome_impresso_cartao,
    conta.tipo AS tipo_conta, conta.data_criacao AS data_criacao_conta
	FROM associado, conta, cartao, movimento
    WHERE conta.id_associado = associado.id
		AND cartao.id_conta = conta.id
		AND cartao.id_associado = associado.id
		AND cartao.id = movimento.id_cartao''' )

df_to_write.write.option("header",True) \
        .option("delimiter",",") \
        .mode("overwrite") \
        .csv("movimento_flat")