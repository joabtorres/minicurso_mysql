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
	cod_categoria INT,
	quantidade INT,
	valor_custo DOUBLE,
	valor_venda DOUBLE,
	valor_receita DOUBLE
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- INSERINDO REGISTROS NA TABELA CATEGORIAS --
INSERT INTO categorias(id, nome) VALUES ('1', 'Alimentício');
INSERT INTO categorias (id, nome) VALUES ('2', 'Higiene');
INSERT INTO categorias (id, nome) VALUES ('3', 'Limpeza');

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
('100022', 'Tomate (KG)', '3', '30', '4', '8', '120'),
('100023', 'Açai (L)', '3', '20', '9', '11', '40');



-- Listar todos os produtos de categoria Limpeza --
SELECT * FROM produtos WHERE cod_categoria = '3';

-- Remover todos os produtos de categoria Limpeza --
DELETE FROM produtos WHERE cod_categoria = '3';

-- Listar todos os produtos de categoria Limpeza --
SELECT * FROM produtos WHERE cod_categoria = '3';


-- Excluir todas os registros da tabela categorias --
TRUNCATE TABLE categorias;

-- Excluir todos os registros da tabela produtos --
TRUNCATE TABLE produtos;



