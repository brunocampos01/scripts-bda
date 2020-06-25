CREATE TABLE financeiro(  id int,   codigo_do_imovel string,   natureza_do_imovel string,   tipo_de_imovel string,   craai string,   municipio string,   predio string,   complemento_imobiliario string,   predio_complemento string,   area_do_layout decimal(12,2),   codigo_cc string,   centro_de_custos string,   tipo_de_orgao string,   endereco_principal string,   fator_de_custo_orgao decimal(12,2),   fator_de_custo_complemento decimal(12,2),   fator_de_custo_imovel decimal(12,2),   fator_de_custo_predio decimal(12,2),   fator_de_custo_municipio decimal(12,2),   fator_de_custo_craai decimal(12,2),   item_de_custo string,   tipo_de_custo string,   competencia timestamp,   soma_cc decimal(12,2),   soma_complemento decimal(12,2),   soma_imovel decimal(12,2),   soma_predio decimal(12,2),   soma_municipio decimal(12,2),   soma_craai decimal(12,2),   total decimal(12,2))ROW FORMAT SERDE   'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' WITH SERDEPROPERTIES (   'path'='hdfs://mpmapas-ns/user/hive/warehouse/opengeo.db/financeiro') STORED AS INPUTFORMAT   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' OUTPUTFORMAT   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'LOCATION  'hdfs://mpmapas-ns/user/hive/warehouse/opengeo.db/financeiro'TBLPROPERTIES (  'COLUMN_STATS_ACCURATE'='false',   'numFiles'='70',   'numRows'='-1',   'rawDataSize'='-1',   'spark.sql.create.version'='2.3.0.cloudera2',   'spark.sql.sources.provider'='parquet',   'spark.sql.sources.schema.numParts'='1',   'spark.sql.sources.schema.part.0'='{\"type\":\"struct\",\"fields\":[{\"name\":\"id\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}},{\"name\":\"codigo_do_imovel\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"natureza_do_imovel\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"tipo_de_imovel\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"craai\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"municipio\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"predio\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"complemento_imobiliario\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"predio_complemento\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"area_do_layout\",\"type\":\"decimal(12,2)\",\"nullable\":true,\"metadata\":{}},{\"name\":\"codigo_cc\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"centro_de_custos\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"tipo_de_orgao\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"endereco_principal\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"fator_de_custo_orgao\",\"type\":\"decimal(12,2)\",\"nullable\":true,\"metadata\":{}},{\"name\":\"fator_de_custo_complemento\",\"type\":\"decimal(12,2)\",\"nullable\":true,\"metadata\":{}},{\"name\":\"fator_de_custo_imovel\",\"type\":\"decimal(12,2)\",\"nullable\":true,\"metadata\":{}},{\"name\":\"fator_de_custo_predio\",\"type\":\"decimal(12,2)\",\"nullable\":true,\"metadata\":{}},{\"name\":\"fator_de_custo_municipio\",\"type\":\"decimal(12,2)\",\"nullable\":true,\"metadata\":{}},{\"name\":\"fator_de_custo_craai\",\"type\":\"decimal(12,2)\",\"nullable\":true,\"metadata\":{}},{\"name\":\"item_de_custo\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"tipo_de_custo\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"competencia\",\"type\":\"timestamp\",\"nullable\":true,\"metadata\":{}},{\"name\":\"soma_cc\",\"type\":\"decimal(12,2)\",\"nullable\":true,\"metadata\":{}},{\"name\":\"soma_complemento\",\"type\":\"decimal(12,2)\",\"nullable\":true,\"metadata\":{}},{\"name\":\"soma_imovel\",\"type\":\"decimal(12,2)\",\"nullable\":true,\"metadata\":{}},{\"name\":\"soma_predio\",\"type\":\"decimal(12,2)\",\"nullable\":true,\"metadata\":{}},{\"name\":\"soma_municipio\",\"type\":\"decimal(12,2)\",\"nullable\":true,\"metadata\":{}},{\"name\":\"soma_craai\",\"type\":\"decimal(12,2)\",\"nullable\":true,\"metadata\":{}},{\"name\":\"total\",\"type\":\"decimal(12,2)\",\"nullable\":true,\"metadata\":{}}]}',   'spark.sql.statistics.numRows'='1099725',   'spark.sql.statistics.totalSize'='18838418',   'totalSize'='18838418',   'transient_lastDdlTime'='1583209856')
CREATE TABLE lupa_cod_municipio(  cod_municipio int,   municipio string)ROW FORMAT SERDE   'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' WITH SERDEPROPERTIES (   'path'='hdfs://mpmapas-ns/user/hive/warehouse/opengeo.db/lupa_cod_municipio') STORED AS INPUTFORMAT   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' OUTPUTFORMAT   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'LOCATION  'hdfs://mpmapas-ns/user/hive/warehouse/opengeo.db/lupa_cod_municipio'TBLPROPERTIES (  'COLUMN_STATS_ACCURATE'='false',   'numFiles'='1',   'numRows'='-1',   'rawDataSize'='-1',   'spark.sql.create.version'='2.3.0.cloudera2',   'spark.sql.sources.provider'='parquet',   'spark.sql.sources.schema.numParts'='1',   'spark.sql.sources.schema.part.0'='{\"type\":\"struct\",\"fields\":[{\"name\":\"cod_municipio\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}},{\"name\":\"municipio\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}}]}',   'totalSize'='2161',   'transient_lastDdlTime'='1574084656')
CREATE TABLE lupa_dados_gerais_municipio(  cod_municipio int,   municipio string,   criacao string,   aniversario string)ROW FORMAT SERDE   'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' WITH SERDEPROPERTIES (   'path'='hdfs://mpmapas-ns/user/hive/warehouse/opengeo.db/lupa_dados_gerais_municipio') STORED AS INPUTFORMAT   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' OUTPUTFORMAT   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'LOCATION  'hdfs://mpmapas-ns/user/hive/warehouse/opengeo.db/lupa_dados_gerais_municipio'TBLPROPERTIES (  'COLUMN_STATS_ACCURATE'='false',   'numFiles'='66',   'numRows'='-1',   'rawDataSize'='-1',   'spark.sql.create.version'='2.3.0.cloudera2',   'spark.sql.sources.provider'='parquet',   'spark.sql.sources.schema.numParts'='1',   'spark.sql.sources.schema.part.0'='{\"type\":\"struct\",\"fields\":[{\"name\":\"cod_municipio\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}},{\"name\":\"municipio\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"criacao\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"aniversario\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}}]}',   'spark.sql.statistics.numRows'='92',   'spark.sql.statistics.totalSize'='78568',   'totalSize'='78568',   'transient_lastDdlTime'='1583209861')
CREATE TABLE lupa_governantes_rj(  nome string,   cpf string,   localidade string,   cod_ibge int,   ano_eleicao int,   base64_foto string,   url_tse string)ROW FORMAT SERDE   'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' WITH SERDEPROPERTIES (   'path'='hdfs://mpmapas-ns/user/hive/warehouse/opengeo.db/lupa_governantes_rj') STORED AS INPUTFORMAT   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' OUTPUTFORMAT   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'LOCATION  'hdfs://mpmapas-ns/user/hive/warehouse/opengeo.db/lupa_governantes_rj'TBLPROPERTIES (  'COLUMN_STATS_ACCURATE'='false',   'numFiles'='2',   'numRows'='-1',   'rawDataSize'='-1',   'spark.sql.create.version'='2.3.0.cloudera2',   'spark.sql.sources.provider'='parquet',   'spark.sql.sources.schema.numParts'='1',   'spark.sql.sources.schema.part.0'='{\"type\":\"struct\",\"fields\":[{\"name\":\"nome\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"cpf\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"localidade\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"cod_ibge\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}},{\"name\":\"ano_eleicao\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}},{\"name\":\"BASE64_foto\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"url_tse\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}}]}',   'spark.sql.statistics.numRows'='93',   'spark.sql.statistics.totalSize'='544450',   'totalSize'='544450',   'transient_lastDdlTime'='1583209857')
CREATE TABLE lupa_orgaos_mprj(  id bigint,   codigo_mgo int,   orgao string,   municipio string,   codigo_municipio int,   codigo_craai int,   craai string,   endereco string,   complemento string,   natureza string,   tipo string,   geom string,   longitude double,   latitude double)ROW FORMAT SERDE   'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' WITH SERDEPROPERTIES (   'path'='hdfs://mpmapas-ns/user/hive/warehouse/opengeo.db/lupa_orgaos_mprj') STORED AS INPUTFORMAT   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' OUTPUTFORMAT   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'LOCATION  'hdfs://mpmapas-ns/user/hive/warehouse/opengeo.db/lupa_orgaos_mprj'TBLPROPERTIES (  'COLUMN_STATS_ACCURATE'='false',   'numFiles'='20',   'numRows'='-1',   'rawDataSize'='-1',   'spark.sql.create.version'='2.3.0.cloudera2',   'spark.sql.sources.provider'='parquet',   'spark.sql.sources.schema.numParts'='1',   'spark.sql.sources.schema.part.0'='{\"type\":\"struct\",\"fields\":[{\"name\":\"id\",\"type\":\"long\",\"nullable\":true,\"metadata\":{}},{\"name\":\"codigo_mgo\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}},{\"name\":\"orgao\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"municipio\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"codigo_municipio\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}},{\"name\":\"codigo_craai\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}},{\"name\":\"craai\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"endereco\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"complemento\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"natureza\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"tipo\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"geom\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"longitude\",\"type\":\"double\",\"nullable\":true,\"metadata\":{}},{\"name\":\"latitude\",\"type\":\"double\",\"nullable\":true,\"metadata\":{}}]}',   'spark.sql.statistics.numRows'='2096',   'spark.sql.statistics.totalSize'='205042',   'totalSize'='205042',   'transient_lastDdlTime'='1578886244')
CREATE TABLE lupa_prefeituras(  cod_craai string,   nome_craai string,   municipio string,   cod_municipio int,   gentilico string,   prefeito string,   vice_prefeito string,   site string,   telefone string,   endereco string,   fonte string)ROW FORMAT SERDE   'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' WITH SERDEPROPERTIES (   'path'='hdfs://mpmapas-ns/user/hive/warehouse/opengeo.db/lupa_prefeituras') STORED AS INPUTFORMAT   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' OUTPUTFORMAT   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'LOCATION  'hdfs://mpmapas-ns/user/hive/warehouse/opengeo.db/lupa_prefeituras'TBLPROPERTIES (  'COLUMN_STATS_ACCURATE'='false',   'numFiles'='66',   'numRows'='-1',   'rawDataSize'='-1',   'spark.sql.create.version'='2.3.0.cloudera2',   'spark.sql.sources.provider'='parquet',   'spark.sql.sources.schema.numParts'='1',   'spark.sql.sources.schema.part.0'='{\"type\":\"struct\",\"fields\":[{\"name\":\"cod_craai\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"nome_craai\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"municipio\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"cod_municipio\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}},{\"name\":\"gentilico\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"prefeito\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"vice_prefeito\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"site\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"telefone\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"endereco\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"fonte\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}}]}',   'spark.sql.statistics.numRows'='92',   'spark.sql.statistics.totalSize'='205711',   'totalSize'='205711',   'transient_lastDdlTime'='1583209859')
CREATE TABLE municipio_flag(  cod_municipio int,   municipio string,   criacao string,   aniversario string,   flag string)ROW FORMAT SERDE   'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' WITH SERDEPROPERTIES (   'path'='hdfs://mpmapas-ns/user/hive/warehouse/opengeo.db/municipio_flag') STORED AS INPUTFORMAT   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' OUTPUTFORMAT   'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'LOCATION  'hdfs://mpmapas-ns/user/hive/warehouse/opengeo.db/municipio_flag'TBLPROPERTIES (  'COLUMN_STATS_ACCURATE'='false',   'numFiles'='1',   'numRows'='-1',   'rawDataSize'='-1',   'spark.sql.create.version'='2.3.0.cloudera2',   'spark.sql.sources.provider'='parquet',   'spark.sql.sources.schema.numParts'='1',   'spark.sql.sources.schema.part.0'='{\"type\":\"struct\",\"fields\":[{\"name\":\"cod_municipio\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}},{\"name\":\"municipio\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"criacao\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"aniversario\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"flag\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}}]}',   'totalSize'='586698',   'transient_lastDdlTime'='1570737917')
