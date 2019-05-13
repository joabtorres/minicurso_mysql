-- SÓ POSSÍVEL EXCLUIR UM REGISTRO SE ELE NÃO FOR RELACIONADO A OUTRA TABELA
-- EXCLUIR categoria
DELETE FROM categorias WHERE cod='1'; -- vai da erro pois possui relacionamento 
DELETE FROM categorias WHERE cod='12'; -- nenhuam relação encontrada