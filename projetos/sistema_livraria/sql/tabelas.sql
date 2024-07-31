----- Criação das Tabelas -----

-- Tabela para usuários
CREATE TABLE Usuario (
	id INT PRIMARY KEY NOT NULL,
	nome VARCHAR(30) NOT NULL,
	tipo VARCHAR(20) NOT NULL CHECK (tipo IN ('cliente', 'funcionário')),
	email VARCHAR(30) NOT NULL,
	senha VARCHAR(20) NOT NULL,
	telefone VARCHAR(30),
	endereco VARCHAR(150),
	CHECK ((tipo = 'cliente' AND endereco IS NOT NULL) OR (tipo = 'funcionário' AND endereco IS NULL))
);

-- Tabela para livros
CREATE TABLE Livro (
	id INT PRIMARY KEY NOT NULL,
	titulo VARCHAR(50) NOT NULL,
	autor VARCHAR(60) NOT NULL,
	paginas INT NOT NULL,
	volume INT NOT NULL,
	idioma VARCHAR(30) NOT NULL,
	ano_publicacao INT NOT NULL,
	condicao VARCHAR(10) NOT NULL CHECK (condicao IN ('novo', 'usado')),
	qtd_disponivel INT NOT NULL,
	qtd_reservado INT NOT NULL,
	valor_unitario FLOAT NOT NULL,
	pontos_troca INT NOT NULL
);

-- Tabela para pedidos
CREATE TABLE Pedido (
	id INT PRIMARY KEY NOT NULL,
	id_usuario INT NOT NULL,
	tipo VARCHAR(20) CHECK (tipo IN ('Compra', 'Empréstimo')),
	status VARCHAR(30) CHECK (status IN ('Aprovado', 'Cancelado', 'Aguardando', 'Em reembolso', 'Reembolsado', 'Emprestado', 'Devolvido')),
	motivo_reemb VARCHAR(60),
	data_ped DATE,
	forma_pagamento VARCHAR(30) CHECK (forma_pagamento IN ('Cartão', 'Pix', 'Boleto', 'Permuta')),
	data_emp DATE,
	data_fim DATE,
	valor_total FLOAT,
	data_reemb DATE,
	FOREIGN KEY (id_usuario) REFERENCES Usuario(id)
);

-- Tabela para carrinho de compras
CREATE TABLE Carrinho (
	id_pedido INT NOT NULL,
	id_livro INT NOT NULL,
	quantidade INT NOT NULL,
	infratotal FLOAT NOT NULL,
	pontos_totais int NOT NULL,
	PRIMARY KEY (id_pedido, id_livro),
	FOREIGN KEY (id_pedido) REFERENCES Pedido(id),
	FOREIGN KEY (id_livro) REFERENCES Livro(id)
);