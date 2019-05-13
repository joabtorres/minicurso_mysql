-- LISTAR TODAS OS PRODUTOS --
SELECT * FROM produtos;

-- LISTAR TODAS OS PRODUTOS da empresa 1 --
SELECT * FROM produtos WHERE cod_empresa='1';

-- LISTAR TODAS OS PRODUTOS com a quantidade abaixo de 10 --
SELECT * FROM produtos WHERE quantidade<'10';

-- LISTAR TODAS OS PRODUTOS da categoria cod 1 --
SELECT * FROM produtos WHERE cod_categoria='1';

-- LISTAR TODAS OS PRODUTOS valor total da receita maior que 50 --
SELECT * FROM produtos WHERE valor_total_receita>'50';

-- TOTAL DE PRODUTOS CADASTRADOS - 
SELECT COUNT(cod) FROM produtos;

-- SOMA TOTAL DE PRODUTOS no estoque
SELECT SUM(quantidade) FROM produtos;