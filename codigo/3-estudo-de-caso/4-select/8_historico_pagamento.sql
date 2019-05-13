-- LISTAR TODOS OS PAGAMENTOS --
SELECT * FROM historico_pagamento;

-- LISTAR TODOS OS PAGAMENTOS da venda 1--
SELECT * FROM historico_pagamento WHERE cod_venda ='1';

-- LISTAR TODOS OS PAGAMENTOS da data 20/08/2019 --
SELECT * FROM historico_pagamento WHERE data='2019-08-20';

-- LISTAR TODOS OS PAGAMENTOS com valor menor que 5 reais--
SELECT * FROM historico_pagamento WHERE valor<'5';

-- LISTAR TODOS OS PAGAMENTOS com valor igual a 120--
SELECT * FROM historico_pagamento WHERE valor='120';


-- LISTAR PAGAMENTO cod 1--
SELECT * FROM historico_pagamento WHERE cod='1';