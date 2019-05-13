-- LISTAR usuários e nome da empresa
SELECT u.*, e.nome as nome_empresa FROM usuario as u INNER JOIN empresa as e WHERE u.cod_empresa=e.cod;