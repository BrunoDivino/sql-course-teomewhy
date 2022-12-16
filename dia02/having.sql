-- Databricks notebook source
SELECT  descUF,
        COUNT(idVendedor)

FROM silver_olist.vendedor

GROUP BY descUF

HAVING COUNT(idVendedor) > 100

-- Leia-se: Mostrar a quantidade de vendedores presentes em cada estado sendo que queremos filtrar apenas os estados que possuem mais de 100 vendedores

-- COMMAND ----------

SELECT  descUF,
        COUNT(idVendedor) AS qtVendedor

FROM silver_olist.vendedor

GROUP BY descUF

HAVING COUNT(idVendedor) > 100

ORDER BY qtVendedor DESC

-- COMMAND ----------

SELECT  descUF,
        COUNT(idVendedor) AS qtVendedor

FROM silver_olist.vendedor

WHERE descUF IN ('SP', 'RJ', 'MG', 'ES')

GROUP BY descUF

HAVING COUNT(idVendedor) > 100

ORDER BY qtVendedor DESC

-- Leia-se: Mostrar a quantidade de vendedores presentes em cada estado, sendo que queremos filtrar apenas os estados que possuem mais de 100 vendedores, e realizze essa query apenas nos estados selecionados

-- COMMAND ----------


