-- CRIAÇÃO DAS TABELAS
CREATE TABLE Usuario(
	id INT PRIMARY KEY NOT NULL,
	nome VARCHAR(30) NOT NULL,
	tipo VARCHAR(20) NOT NULL CHECK (tipo IN ('cliente', 'funcionário')),
	email VARCHAR(30) NOT NULL,
	senha VARCHAR(20) NOT NULL,
	telefone VARCHAR(30),
	endereco VARCHAR(150),
	CHECK ((tipo = 'cliente' AND endereco IS NOT NULL) OR (tipo = 'funcionário' AND endereco IS NULL))
);

CREATE TABLE Livro(
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


CREATE TABLE Pedido(
	id INT PRIMARY KEY NOT NULL,
	id_usuario INT NOT NULL,
	tipo VARCHAR(20) CHECK (tipo IN ('Compra', 'Empréstimo')),
	status VARCHAR(30) CHECK (status IN ('Aprovado', 'Cancelado', 'Aguardando',
		'Em reembolso', 'Reembolsado', 'Emprestado', 'Devolvido')),
	motivo_reemb varchar(60),
	data_ped DATE,
	forma_pagamento VARCHAR(30) CHECK (forma_pagamento IN ('Cartão', 'Pix', 'Boleto', 'Permuta')),
	data_emp DATE,
	data_fim DATE,
	valor_total FLOAT,
	data_reemb DATE,
	FOREIGN KEY (id_usuario) REFERENCES Usuario(id)
);


CREATE TABLE Carrinho(
	id_pedido INT NOT NULL,
	id_livro INT NOT NULL,
	quantidade INT NOT NULL,
	infratotal FLOAT NOT NULL,
	pontos_totais int NOT NULL,
	PRIMARY KEY (id_pedido, id_livro),
	FOREIGN KEY (id_pedido) REFERENCES Pedido(id),
	FOREIGN KEY (id_livro) REFERENCES Livro(id)
);

-- INSERÇÃO DOS USUÁRIOS
INSERT INTO Usuario 
	VALUES (1, 'Eric Castro', 'cliente', 'ericc14@gmail.com', '12345678', '(11) 95555-9999', 'Rua dos Guararapes, 745, São Paulo-SP');
INSERT INTO Usuario (id, nome, tipo, email, senha, telefone)
	VALUES (2, 'Eric Castro', 'funcionário', 'ericc14@gmail.com', '12345678', '(11) 95555-9999');
INSERT INTO Usuario 
	VALUES (3, 'Gabriel', 'cliente', 'Gabriel2000@gmail.com', 'ABCD123', '(11) 95555-1001', 'Estrada de taipas, 1990, São Paulo-SP');
INSERT INTO Usuario 
	VALUES (4, 'Geovanna Vieira', 'cliente', 'Geovieira059@gmail.com', 'ABCD123', '(11) 95555-1002', 'Estrada de taipas, 1990, São Paulo-SP');
INSERT INTO Usuario 
	VALUES (5, 'Rosangela Santos', 'cliente', 'Rosangela.santos@gmail.com', '0246810', '(11) 95555-1030', 'Estrada de taipas, 1990, São Paulo-SP');
SELECT * FROM Usuario;


-- INSERÇÃO DOS LIVROS
INSERT INTO Livro VALUES (1, 'Memórias Póstumas', 'Machado De Assis', 'Antofágica', 200, 2, 'PT/BR', 2007, 'novo', 8, 2, 20, 2);
INSERT INTO Livro VALUES (2, 'Mentirosos', 'Lockhart', 'Seguinte', 420, 1, 'PT/BR', 2016, 'novo', 7, 7, 50, 4);
INSERT INTO Livro VALUES (3, 'Memórias Póstumas', 'Machado De Assis', 'Antofágica', 200, 2, 'PT/BR', 2007, 'usado', 8, 2, 20, 2);
INSERT INTO Livro VALUES (4, 'Mentirosos', 'Lockhart', 'Seguinte', 420, 1, 'PT/BR', 2016, 'usado', 5, 0, 20, 2);
INSERT INTO Livro VALUES (5, 'Luar vermelho', 'Gabriel', 'Companhia das letras', 226, 2, 'PT/BR', 2014, 'novo', 17, 3, 39, 5);
INSERT INTO Livro VALUES (6, 'Harry Potter 1', 'JK.', 'Rocco', 226, 2, 'PT/BR', 2019, 'usado', 9, 5, 27, 4);
INSERT INTO Livro VALUES (7, 'Harry Potter 2', 'JK.', 'Rocco', 423, 1, 'PT/BR', 2012, 'usado', 11, 2, 22, 3);
SELECT * FROM Livro ORDER BY id ASC;
