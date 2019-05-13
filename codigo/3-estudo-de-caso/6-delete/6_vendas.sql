-- SÓ POSSÍVEL EXCLUIR UM REGISTRO SE ELE NÃO FOR RELACIONADO A OUTRA TABELA
-- EXCLUIR vendas
DELETE FROM vendas WHERE cod='1'; -- vai da erro pois possui relacionamento 
DELETE FROM vendas WHERE cod='200'; -- nenhuam relação encontrada