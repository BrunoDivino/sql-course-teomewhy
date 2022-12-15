-- Databricks notebook source
SELECT COUNT(*) AS nrLinhasNaoNulas -- linhas não nulas

FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    COUNT(*) AS nrLinhasNaoNulas,  -- linhas não nulas
    COUNT(idCliente) AS nrClientesNaoNulos  -- id de clientes nao nulos

FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    COUNT(*) AS nrLinhasNaoNulas,  -- linhas não nulas
    COUNT(idCliente) AS nrClientesNaoNulos,  -- id de clientes nao nulos
    COUNT(DISTINCT idCliente) AS nrClientesDistintos -- id de clientes distintos

FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    COUNT(*) AS nrLinhasNaoNulas,  -- linhas não nulas
    COUNT(idCliente) AS nrClientesNaoNulos,  -- id de clientes nao nulos
    COUNT(DISTINCT idCliente) AS nrClientesDistintos, -- id de clientes distintos
    
    COUNT(idClienteUnico) AS nrIdClienteUnico,
    COUNT(DISTINCT idClienteUnico) AS nrIdClienteUnicoDistintos -- conta id de clientes únicos distintos

FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    COUNT(*) AS qtLinhas,
    COUNT(DISTINCT idCliente) AS qtClientes,
    COUNT(DISTINCT idClienteUnico) AS qtClientesUnicos
    
FROM silver_olist.cliente

WHERE descCidade IN ('presidente prudente', 'curitiba')

-- COMMAND ----------

SELECT 
    ROUND( AVG(vlPreco), 2) AS avgPreco, -- media da coluna vlPreco (preço média dos produtos) arredondado para duas casas decimais
    
    INT( PERCENTILE(vlPreco, 0.5) ) AS medianPreco, -- preco mediano dos produtos convertido em inteiro
    
    MAX(vlPreco) AS maxPreco, -- maximo da coluna vlPreco
    AVG(vlFrete) AS avgFrete, -- media da coluna vlFrete
    MAX(vlFrete) AS maxFrete, -- maximo da coluna vlFrete
    MIN(vlFrete) AS minFrete -- minimo da coluna vlFrete

FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT COUNT(*)
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------


