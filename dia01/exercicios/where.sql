-- Databricks notebook source
-- Lista de pedidos com mais de um item

SELECT  *

FROM silver_olist.item_pedido



-- COMMAND ----------

-- Lista de pedidos que o frete é mais caro que o item

SELECT *

FROM silver_olist.item_pedido

WHERE vlFrete > vlPreco

-- COMMAND ----------

-- Lista de pedidos que ainda nao foram enviados

SELECT *

FROM silver_olist.pedido

WHERE ISNOTNULL(dtAprovado)
AND ISNULL(dtEnvio)

-- COMMAND ----------

-- Lista de pedidos que foram entregues com atraso

SELECT *

FROM silver_olist.pedido

WHERE dtEntregue > dtEstimativaEntrega

-- COMMAND ----------

-- Lista de pedidos que foram entregues com 2 dias de antecedencia

SELECT *

FROM silver_olist.pedido

WHERE dtEstimativaEntrega > dtEntregue
AND DATEDIFF(dtEstimativaEntrega, dtEntregue) = 2

-- COMMAND ----------

  -- Lista de pedidos feitos em dezembro de 2017 e entregues com atraso

SELECT *

FROM silver_olist.pedido

WHERE YEAR(dtPedido) = 2017 
AND MONTH(dtPedido) = 12
AND descSituacao = 'delivered'
AND DATE(dtEntregue) > DATE(dtEstimativaEntrega)

-- COMMAND ----------

-- Lista de pedidos com avaliação maior ou igual a 4

SELECT *

FROM silver_olist.avaliacao_pedido

WHERE vlNota >= 4

-- COMMAND ----------

-- Lista de pedidos com 2 ou mais parecelas menores que R$20,00

SELECT  *,
        ROUND( (vlPagamento / nrPacelas), 2 ) AS vlParcela

FROM silver_olist.pagamento_pedido

WHERE nrPacelas >= 2
AND (vlPagamento / nrPacelas) < 20

-- COMMAND ----------


