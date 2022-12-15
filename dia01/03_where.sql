-- Databricks notebook source
SELECT * 

FROM silver_olist.pedido

WHERE descSituacao = 'canceled'

-- LIMIT 100

-- Leia-se: Selecione todas as colunas da tabela silver_olist.pedido onde a condição em que a coluna descSituacao é igual a 'canceled' é verdadeira

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao = 'shipped'
AND YEAR(dtPedido) = '2018'

-- LIMIT 100

-- Leia-se: Selecione todas as colunas da tabela silver_olist.pedido onde as condições a seguir são verdadeiras: 
-- A coluna descSituacao deve ser 'shipped'
-- A coluna dtPedido deve ter o seu ano em '2018'

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND YEAR(dtPedido) = '2018'

-- LIMIT 100

-- Leia-se: Selecione todas as colunas da tabela silver_olist.pedido onde as condições a seguir são verdadeiras: 
-- A coluna descSituacao deve ser 'shipped' ou 'canceled'
-- A coluna dtPedido deve ter o seu ano em '2018'

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND YEAR(dtPedido) = '2018'

-- LIMIT 100

-- Leia-se: Selecione todas as colunas da tabela silver_olist.pedido onde as condições a seguir são verdadeiras: 
-- A coluna descSituacao deve ser 'shipped' ou 'canceled'
-- A coluna dtPedido deve ter o seu ano em '2018'

-- COMMAND ----------

SELECT *

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND YEAR(dtPedido) = '2018'
AND DATEDIFF(dtEstimativaEntrega, dtAprovado) > 30

-- LIMIT 100

-- Leia-se: Selecione todas as colunas da tabela silver_olist.pedido onde as condições a seguir são verdadeiras: 
-- A coluna descSituacao deve ser 'shipped' ou 'canceled'
-- A coluna dtPedido deve ter o seu ano em '2018'
-- A diferença de dias entre a a estimativa de entrega (dtEstimativaEntrega) e data aprovada (dtAprovado) deve ser maior que 30

-- COMMAND ----------


