-- Databricks notebook source
-- Leia-se: Mostra a quantidade de clientes presentes em cada estado ordenado de forma crescente

-- Primeira Forma

SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClientesEstado
  
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY 2


-- COMMAND ----------

-- Segunda Forma

SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClientesEstado
  
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClientesEstado

-- COMMAND ----------

-- Terceira Forma

SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClientesEstado
  
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY COUNT(DISTINCT idClienteUnico)

-- COMMAND ----------

-- Leia-se: Mostra a quantidade de clientes presentes em cada estado ordenado de forma decrescente

SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClientesEstado
  
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClientesEstado DESC

-- COMMAND ----------

SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClientesEstado
  
FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClientesEstado DESC

LIMIT 1

-- COMMAND ----------


