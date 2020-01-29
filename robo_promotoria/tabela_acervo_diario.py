import pyspark
from pyspark.sql.functions import unix_timestamp, from_unixtime, current_timestamp, lit, date_format
from utils import _update_impala_table


spark = pyspark.sql.session.SparkSession \
        .builder \
        .appName("criar_tabela_acervo_temporario") \
        .enableHiveSupport() \
        .getOrCreate()

spark.conf.set("spark.sql.sources.partitionOverwriteMode","dynamic")


spark.sql("use %s" % "exadata_aux")
result_table_check = spark.sql("SHOW TABLES LIKE '%s'" % "tb_acervo_diario").count()

table = spark.sql("""
        SELECT 
            docu_orgi_orga_dk_responsavel AS cod_orgao, 
            pacote_atribuicao,
            count(docu_dk) as acervo
        FROM exadata.mcpr_documento
            JOIN cluster.atualizacao_pj_pacote ON docu_orgi_orga_dk_responsavel = id_orgao
        WHERE 
            docu_fsdc_dk = 1
        GROUP BY docu_orgi_orga_dk_responsavel, pacote_atribuicao
""")

table = table.withColumn("tipo_acervo", lit(0)).withColumn(
        "dt_inclusao",
        from_unixtime(
            unix_timestamp(current_timestamp(), 'yyyy-MM-dd'), 'yyyy-MM-dd') \
        .cast('timestamp')) \
        .withColumn("dt_partition", date_format(current_timestamp(), "ddMMyyyy"))

if result_table_check > 0:
    table.write.mode("overwrite").insertInto("exadata_aux.tb_acervo_diario", overwrite=True)
else:
    table.write.partitionBy("dt_partition").saveAsTable("exadata_aux.tb_acervo_diario")

_update_impala_table("exadata_aux.tb_acervo_diario")


