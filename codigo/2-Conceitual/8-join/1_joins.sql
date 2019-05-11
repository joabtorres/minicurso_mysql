-- excluindo banco de dados --
DROP DATABASE lista_de_produtos;
-- criando banco de dados --
CREATE DATABASE lista_de_produtos DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
-- acessando banco de dados --
USE lista_de_produtos;

-- criando tabela categoria --
CREATE TABLE categorias(
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR (255) NOT NULL
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- criando tabela protudos --
CREATE TABLE produtos(
	cod INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255),
	cod_categoria INT UNSIGNED,
	quantidade INT,
	valor_custo DOUBLE,
	valor_venda DOUBLE,
	valor_receita DOUBLE,
	CONSTRAINT fk_categoria FOREIGN KEY (cod_categoria) REFERENCES categorias (id)
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- INSERINDO REGISTROS NA TABELA CATEGORIAS --
INSERT INTO categorias(id, nome) VALUES ('1', 'Alimentício');
INSERT INTO categorias (id, nome) VALUES ('2', 'Higiene');
INSERT INTO categorias (id, nome) VALUES ('3', 'Limpeza');
INSERT INTO categorias (id, nome) VALUES ('4', 'viagem');
INSERT INTO categorias (id, nome) VALUES ('5', 'Material Escolar');

-- INSERINDO REGISTROS NA TABELA PRODUTOS PRIMEIRA FORMA--
INSERT INTO produtos 
(cod, nome, cod_categoria, quantidade, valor_custo, valor_venda, valor_receita) VALUES 
('100001', 'Feijão Carioca 1Kg', '1', '20', '4', '5', '20');
-- INSERINDO REGISTROS NA TABELA PRODUTOS  SEGUNDA FORMA--
INSERT INTO produtos (cod, nome, cod_categoria, quantidade, valor_custo, valor_venda, valor_receita) VALUES 
('100002', 'Feijão Fradinhp 1Kg', '1', '15', '5', '6.5', '22.5'),
('100003', 'Feijão Branco 1Kg', '1', '10', '4', '6', '20'),
('100004', 'Arroz Branco 1Kg', '1', '20', '5', '7', '40'),
('100005', 'Arriz integral 1Kg', '1', '30', '6', '9', '90'),
('100006', 'Arroz negro 1Kg', '1', '5', '7', '10', '15'),
('100007', 'Farinha Branca 1Kg', '1', '2', '5', '6', '2'),
('100008', 'Farinha Amarela 1Kg', '1', '10', '10', '12', '20'),
('100009', 'Vassoura', '1', '5', '5', '6', '5'),
('100011', 'Biscoito Garoto', '1', '20', '2', '3', '20'),
('100012', 'Biscoito Passatempo', '1', '40', '5', '7', '80'),
('100013', 'Salgadinho Doritos', '1', '20', '5', '8', '60'),
('100014', 'Batata palha', '1', '15', '6', '9', '45'),
('100015', 'Sabonete', '2', '66', '3.5', '5', '99'),
('100016', 'Shampoo ', '2', '10', '10', '13', '30'),
('100017', 'Desodorante Dove', '2', '60', '9', '9.9', '54'),
('100018', 'Prestobarbar Gillette', '2', '20', '3', '6', '60'),
('100010', 'Tapete', '3', '4', '6', '9', '12'),
('100019', 'Sabão em pó', '3', '10', '8', '9', '10'),
('100020', 'Detergente', '3', '30', '3.8', '4', '6'),
('100021', 'Palha de aço (Bom Bril)', '3', '20', '0.5', '1', '10'),
('100022', 'Tomate (KG)', '1', '30', '4', '8', '120'),
('100023', 'Açai (L)', '1', '20', '9', '11', '40');


-- Utilizando Inner JOIN --
SELECT produtos.*, categorias.nome FROM produtos INNER JOIN categorias WHERE produtos.cod_categoria=categorias.id;

-- Utilizando Inner JOIN --
SELECT p.*, c.nome FROM produtos AS p INNER JOIN categorias AS c WHERE p.cod_categoria=c.id;



-- Utilizando Left JOIN --
SELECT produtos.*, categorias.nome FROM produtos LEFT JOIN categorias ON produtos.cod_categoria=categorias.id;

-- Utilizando Left JOIN --
SELECT p.*, c.nome FROM produtos AS p LEFT JOIN categorias AS c ON p.cod_categoria=c.id;



-- Utilizando Right JOIN --
SELECT produtos.*, categorias.nome FROM produtos RIGHT JOIN categorias ON produtos.cod_categoria=categorias.id;

-- Utilizando Right JOIN --
SELECT p.*, c.nome FROM produtos AS p RIGHT JOIN categorias AS c ON p.cod_categoria=c.id;



-- Utilizando Outer JOIN --
SELECT produtos.*, categorias.nome FROM produtos LEFT JOIN categorias ON produtos.cod_categoria=categorias.id UNION ALL SELECT produtos.*, categorias.nome FROM produtos RIGHT JOIN categorias ON produtos.cod_categoria=categorias.id;

-- Utilizando Outer JOIN --
SELECT p.*, c.nome FROM produtos AS p LEFT JOIN categorias AS c ON p.cod_categoria=c.id UNION ALL SELECT p.*, c.nome FROM produtos AS p RIGHT JOIN categorias AS c ON p.cod_categoria=c.id;



-- Utilizando Left Excluding Join --
SELECT produtos.*, categorias.nome FROM produtos LEFT JOIN categorias ON produtos.cod_categoria=categorias.id WHERE categorias.id is null;

-- Utilizando Left Excluding Join --
SELECT p.*, c.nome FROM produtos AS p LEFT JOIN categorias AS c ON p.cod_categoria=c.id WHERE c.id is null;



-- Utilizando Rigth Excluding Join --
SELECT produtos.*, categorias.nome FROM produtos RIGHT JOIN categorias ON produtos.cod_categoria=categorias.id WHERE produtos.cod_categoria is null;

-- Utilizando Rigth Excluding Join --
SELECT p.*, c.nome FROM produtos AS p RIGHT JOIN categorias AS c ON p.cod_categoria=c.id WHERE p.cod_categoria is null;





