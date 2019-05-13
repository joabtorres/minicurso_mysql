-- SÓ POSSÍVEL EXCLUIR UM REGISTRO SE ELE NÃO FOR RELACIONADO A OUTRA TABELA
-- EXCLUIR clientes
DELETE FROM clientes WHERE cod='1'; -- vai da erro pois possui relacionamento 
DELETE FROM clientes WHERE cod='7'; -- nenhuam relação encontrada