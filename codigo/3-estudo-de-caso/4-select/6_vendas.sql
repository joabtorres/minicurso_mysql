-- TODAS AS VENDAS --
SELECT * FROM vendas;

-- TODAS AS VENDAS EM ABERTO--
SELECT * FROM vendas WHERE status='EM ABERTO';

-- TODAS AS VENDAS PAGAS--
SELECT * FROM vendas WHERE status='PAGO';

-- TODAS AS VENDAS do cliente 1--
SELECT * FROM vendas WHERE cod_cliente='1';


-- TODAS AS VENDAS da data 20/08/2019--
SELECT * FROM vendas WHERE data='2019-08-20';