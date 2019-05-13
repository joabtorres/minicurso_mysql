-- SÓ POSSÍVEL EXCLUIR UM REGISTRO SE ELE NÃO FOR RELACIONADO A OUTRA TABELA
-- EXCLUIR historico_pagamento
DELETE FROM historico_pagamento WHERE cod='1'; -- nenhuma relação dependente encontrada