-- SÓ POSSÍVEL EXCLUIR UM REGISTRO SE ELE NÃO FOR RELACIONADO A OUTRA TABELA
-- EXCLUIR EMPRESA
DELETE FROM empresa WHERE cod='1'; -- vai da erro pois possui relacionamento 
DELETE FROM empresa WHERE cod='2'; -- nenhuam relação encontrada
