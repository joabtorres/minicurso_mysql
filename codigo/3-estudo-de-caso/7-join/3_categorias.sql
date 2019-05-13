-- LISTAR categorias e nome da empresa que a possuir
SELECT c.*, e.nome as nome_empresa FROM categorias as c INNER JOIN empresa as e WHERE c.cod_empresa = e.cod;

-- LISTAR categoria limpeza e nome da empresa que a possuir
SELECT c.*, e.nome as nome_empresa FROM categorias as c INNER JOIN empresa as e WHERE c.cod_empresa = e.cod AND c.nome="Limpeza";