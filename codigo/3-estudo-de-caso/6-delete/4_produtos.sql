-- SÓ POSSÍVEL EXCLUIR UM REGISTRO SE ELE NÃO FOR RELACIONADO A OUTRA TABELA
-- EXCLUIR produtos
DELETE FROM produtos WHERE cod='1'; -- vai da erro pois possui relacionamento 
DELETE FROM produtos WHERE cod='100'; -- nenhuam relação encontrada