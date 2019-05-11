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
	valor_receita DOUBLE
)ENGINE = InnoDB DEFAULT CHARSET = utf8;