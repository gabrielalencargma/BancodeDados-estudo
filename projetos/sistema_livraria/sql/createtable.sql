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
    editora VARCHAR(30) NOT NULL,
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
    data_reemb date,
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

insert into Usuario 
    values (1, 'Eric Castro', 'cliente', 'ericc14@gmail.com', '12345678', '(11) 95555-9999', 'Rua dos Guararapes, 745, São Paulo-SP');
insert into Usuario (id, nome, tipo, email, senha, telefone)
    values (2, 'Eric Castro', 'funcionário', 'ericc14@gmail.com', '12345678', '(11) 95555-9999');
insert into Usuario 
    values (3, 'Gabriel', 'cliente', 'Gabriel2000@gmail.com', 'ABCD123', '(11) 95555-1001', 'Estrada de taipas, 1990, São Paulo-SP');
insert into Usuario 
    values (4, 'Geovanna Vieira', 'cliente', 'Geovieira059@gmail.com', 'ABCD123', '(11) 95555-1002', 'Estrada de taipas, 1990, São Paulo-SP');
insert into Usuario 
    values (5, 'Rosangela Santos', 'cliente', 'Rosangela.santos@gmail.com', '0246810', '(11) 95555-1030', 'Estrada de taipas, 1990, São Paulo-SP');
select * from Usuario;


-- INSERÇÕES DOS LIVROS
insert into Livro values (1, 'Memórias Póstumas', 'Machado De Assis', 'Antofágica', 200, 2, 'PT/BR', 2007, 'novo', 8, 2, 20, 2);
insert into Livro values (2, 'Mentirosos', 'Lockhart', 'Seguinte', 420, 1, 'PT/BR', 2016, 'novo', 7, 7, 50, 4);
insert into Livro values (3, 'Memórias Póstumas', 'Machado De Assis', 'Antofágica', 200, 2, 'PT/BR', 2007, 'usado', 8, 2, 20, 2);
insert into Livro values (4, 'Mentirosos', 'Lockhart', 'Seguinte', 420, 1, 'PT/BR', 2016, 'usado', 5, 0, 20, 2);
insert into Livro values (5, 'Luar vermelho', 'Gabriel', 'Companhia das letras', 226, 2, 'PT/BR', 2014, 'novo', 17, 3, 39, 5);
insert into Livro values (6, 'Harry Potter 1', 'JK.', 'Rocco', 226, 2, 'PT/BR', 2019, 'usado', 9, 5, 27, 4);
insert into Livro values (7, 'Harry Potter 2', 'JK.', 'Rocco', 423, 1, 'PT/BR', 2012, 'usado', 11, 2, 22, 3);
select * from Livro ORDER BY id ASC;