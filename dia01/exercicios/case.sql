-- Databricks notebook source
-- Selecione todos os pedidos e marquie se houve atraso ou nao

SELECT  *,

        CASE
          WHEN ( DATE(dtEntregue) > DATE(dtEstimativaEntrega) ) THEN 'atrasado'
          ELSE 'em dia'
        END AS statusEntrega

FROM silver_olist.pedido

-- COMMAND ----------

-- Selecione os itens de pedidos e defina os grupos em uma nova coluna
-- para frete inferior a 10%: '10%';
-- para frete entre 10% a 25%: '10% a 25%';
-- para frete entre 25% a 50%: '25% a 50%';
-- para frete maior que 50%: '+50%'.

SELECT  *,
        vlPreco + vlFrete AS vlTotal,
        vlFrete / (vlPreco + vlFrete) AS pctFrete,
        
        CASE
          WHEN vlFrete / (vlPreco + vlFrete) <= 0.1 THEN '10%'
          WHEN vlFrete / (vlPreco + vlFrete) <= 0.25 THEN '10% a 25%'
          WHEN vlFrete / (vlPreco + vlFrete) <= 0.5 THEN '25% a 50%'
          ELSE '+50%'
        END AS descFretePct

FROM silver_olist.item_pedido

-- COMMAND ----------


