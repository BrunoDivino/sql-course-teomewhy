-- Databricks notebook source
SELECT  *,
        CASE WHEN descUF = 'SP' THEN 'paulista' 
        ELSE 'outros'
        END AS descNacionalidade

FROM silver_olist.cliente

LIMIT 100

-- Leia-se: Selecione todas as colunas da tabela silver_olist.cliente e adicione uma nova coluna denominada descNacionalidade. Essa coluna tem uma funcionalidade parecida com o 'if-else-elif' do python.

-- COMMAND ----------

SELECT  *,
        CASE 
          WHEN descUF = 'SP' THEN 'paulista'
          WHEN descUF = 'RJ' THEN 'fluminense'
          WHEN descUF = 'PR' THEN 'paranaense'
          ELSE 'outros'
        END AS descNacionalidade

FROM silver_olist.cliente

-- LIMIT 100

-- Leia-se: Selecione todas as colunas da tabela silver_olist.cliente e adicione uma nova coluna denominada descNacionalidade. Essa coluna tem uma funcionalidade parecida com o 'if-else-elif' do python.

-- COMMAND ----------

SELECT  *,

        -- Isso é uma coluna
        CASE 
          WHEN descUF = 'SP' THEN 'paulista'
          WHEN descUF = 'RJ' THEN 'fluminense'
          WHEN descUF = 'PR' THEN 'paranaense'
          ELSE 'outros'
        END AS descNacionalidade,
        
        -- Isso é outra coluna
        CASE
          WHEN descCidade LIKE '%sao%' THEN 'Tem são no nome'
          ELSE 'Não tem são no nome'
        END AS descCidadeSao

FROM silver_olist.cliente

-- LIMIT 100

-- Leia-se: Selecione todas as colunas da tabela silver_olist.cliente e adicione uma nova coluna denominada descNacionalidade. Essa coluna tem uma funcionalidade parecida com o 'if-else-elif' do python.

-- COMMAND ----------

SELECT  *,

        CASE
          WHEN descUF IN ('SP','MG','RJ','ES') THEN 'sudeste'
        END AS descRegiao
        
FROM silver_olist.cliente

-- COMMAND ----------


