-- TODAS AS VENDAS LISTADAS --
SELECT * FROM listar_vendas;

-- TODAS AS VENDAS LISTADAS da vendas 1--
SELECT * FROM listar_vendas WHERE cod_venda='1';

-- TODAS AS VENDAS LISTADAS do produto cod 1--
SELECT * FROM listar_vendas WHERE cod_produto = 1;


-- TODAS AS VENDAS LISTADAS COM QUANTIDADE MAIOR QUE 5--
SELECT * FROM listar_vendas WHERE quantidade > '5';

-- TODAS AS VENDAS LISTADAS COM QUANTIDADE menor QUE 3--
SELECT * FROM listar_vendas WHERE quantidade > '3';


-- QNT DE TODAS AS VENDAS LISTADAS --
SELECT COUNT(cod) FROM listar_vendas;