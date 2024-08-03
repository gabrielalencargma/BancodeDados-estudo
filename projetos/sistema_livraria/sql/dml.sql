----- CADASTRO -----

-- Cadastro de clientes
INSERT INTO Usuario 
	VALUES (1, 'Eric Castro', 'cliente', 'ericc14@gmail.com', '12345678', '(11) 95555-9999', 'Rua dos Guararapes, 745, São Paulo-SP');
INSERT INTO Usuario 
	VALUES (3, 'Gabriel', 'cliente', 'Gabriel2000@gmail.com', 'ABCD123', '(11) 95555-1001', 'Estrada de taipas, 1990, São Paulo-SP');
INSERT INTO Usuario 
	VALUES (4, 'Geovanna Vieira', 'cliente', 'Geovieira059@gmail.com', 'ABCD123', '(11) 95555-1002', 'Estrada de taipas, 1990, São Paulo-SP');
INSERT INTO Usuario 
	VALUES (5, 'Rosangela Santos', 'cliente', 'Rosangela.santos@gmail.com', '0246810', '(11) 95555-1030', 'Estrada de taipas, 1990, São Paulo-SP');

-- Cadastro de Funcionários
INSERT INTO Usuario (id, nome, tipo, email, senha, telefone)
	VALUES (2, 'Eric Castro', 'funcionário', 'ericc14@gmail.com', '12345678', '(11) 95555-9999');

-- Cadastro de livros
INSERT INTO Livro VALUES (1, 'Memórias Póstumas', 'Machado De Assis', 'Antofágica', 200, 2, 'PT/BR', 2007, 'novo', 8, 2, 20, 2);
INSERT INTO Livro VALUES (2, 'Mentirosos', 'Lockhart', 'Seguinte', 420, 1, 'PT/BR', 2016, 'novo', 7, 7, 50, 4);
INSERT INTO Livro VALUES (3, 'Memórias Póstumas', 'Machado De Assis', 'Antofágica', 200, 2, 'PT/BR', 2007, 'usado', 8, 2, 20, 2);
INSERT INTO Livro VALUES (4, 'Mentirosos', 'Lockhart', 'Seguinte', 420, 1, 'PT/BR', 2016, 'usado', 5, 0, 20, 2);
INSERT INTO Livro VALUES (5, 'Luar vermelho', 'Gabriel', 'Companhia das letras', 226, 2, 'PT/BR', 2014, 'novo', 17, 3, 39, 5);
INSERT INTO Livro VALUES (6, 'Harry Potter 1', 'JK.', 'Rocco', 226, 2, 'PT/BR', 2019, 'usado', 9, 5, 27, 4);
INSERT INTO Livro VALUES (7, 'Harry Potter 2', 'JK.', 'Rocco', 423, 1, 'PT/BR', 2012, 'usado', 11, 2, 22, 3);
SELECT * FROM Livro ORDER BY id ASC;

----- CRIAÇÃO DO CARRINHO DE COMPRAS -----

/* Após clicar em adicionar ao carrinho: 
	1-será aberto um pedido
	2-será feita, no carrinho, a escolha de como deseja adquirir este produto (compra ou empréstimo)
	3-processos posteriores em função do método de aquisição selecionado
*/

-- Carrinho do pedido 98
INSERT INTO Pedido (id, id_usuario, status) VALUES (98, 3, 'Aguardando');
INSERT INTO Carrinho VALUES (98, 7, 1, 22, 2);

-- Carrinho do pedido 99
INSERT INTO Pedido (id, id_usuario, status) VALUES (99, 4, 'Aguardando');
INSERT INTO Carrinho VALUES (99, 6, 1, 27, 4);

-- Atualizando tipo do pedido 99 para empréstimo
UPDATE Pedido SET tipo='Empréstimo' WHERE id=99;

-------------------------- PEDIDO DO TIPO COMPRA ------------------------------

-- PARTE 1: CRIAÇÃO DE PEDIDO
INSERT INTO Pedido (id, id_usuario, status) VALUES (100, 1, 'Aguardando');
INSERT INTO Carrinho VALUES (100, 5, 1, 39, 5);
INSERT INTO Carrinho VALUES (100, 2, 2, 100, 2);

-- PARTE 2: CONFIRMAÇÃO DE PEDIDO
-- MÉTODO DE AQUISIÇÃO 2.1: 
UPDATE Pedido SET tipo='Compra' WHERE id=100;
-- PAGAMENTO 2.2:
UPDATE Pedido SET forma_pagamento='Cartão', valor_total = 270 WHERE id = 100;
-- CONFIRMAÇÃO 2.3:
UPDATE Pedido SET status='Aprovado', data_ped=TO_DATE('06/11/2023', 'DD/MM/YYYY'),
	WHERE id = 100;

-- PARTE 3: FINALIZAÇÃO
UPDATE Pedido SET data_fim=TO_DATE('12/11/2023', 'DD/MM/YYYY') WHERE id=100; 

-------------------- PEDIDO DO TIPO COMPRA COM PERMUTA --------------------------

-- PARTE 1: CRIAÇÃO DE PEDIDO
INSERT INTO Pedido (id, id_usuario, status) VALUES (101, 1, 'Aguardando'); 
INSERT INTO Carrinho VALUES (101, 5, 1, 39, 2);

-- PARTE 2: CONFIRMAÇÃO DE PEDIDO
-- MÉTODO DE AQUISIÇÃO 2.1: 
UPDATE Pedido SET tipo='Compra' WHERE id=101;
-- PAGAMENTO 2.2:
UPDATE Pedido SET forma_pagamento='Permuta' WHERE id = 101;
-- CONFIRMAÇÃO 2.3:
UPDATE Pedido SET
    status='Aprovado', data_ped=TO_DATE('17/11/2023', 'DD/MM/YYYY')
    WHERE id = 101;

-- PARTE 3: FINALIZAÇÃO
UPDATE Pedido SET data_fim=TO_DATE('22/11/2023', 'DD/MM/YYYY') WHERE id=101;

---------------------- PEDIDO DO TIPO EMPRÉSTIMO ----------------------

-- PARTE 1: CRIAÇÃO DE PEDIDO
INSERT INTO Pedido (id, id_usuario, status) VALUES (102, 3, 'Aguardando');
INSERT INTO Carrinho VALUES (102, 3, 1, 15, 2); 
INSERT INTO Carrinho VALUES (102, 4, 1, 25, 2);

-- PARTE 2: CONFIRMAÇÃO DE PEDIDO
-- PARTE 2.1: MÉTODO DE AQUISIÇÃO:
UPDATE Pedido SET tipo='Empréstimo' WHERE id=102;
-- CONFIRMAÇÃO 2.2:
UPDATE Pedido SET 
    status='Aprovado', data_ped=TO_DATE('17/11/2023', 'DD/MM/YYYY') WHERE id = 102;

-- PARTE 3: FINALIZAÇÃO
-- Emprestado (entregue)
UPDATE Pedido SET status='Emprestado', data_emp=TO_DATE('24/11/2023', 'DD/MM/YYYY'), data_fim=TO_DATE('02/01/2024', 'DD/MM/YYYY') 
    WHERE id = 102;
-- Devolvido
UPDATE Pedido SET
    status='Devolvido', data_fim=TO_DATE('16/12/2024', 'DD/MM/YYYY') WHERE id = 102;

----------------------- REEMBOLSO --------------------------

-- PARTE 1: CRIAÇÃO DE PEDIDO
INSERT INTO Pedido (id, id_usuario, status) VALUES (103, 5, 'Aguardando');
INSERT INTO Carrinho VALUES (103, 6, 1, 27, 4); 
INSERT INTO Carrinho VALUES (103, 7, 1, 22, 3);

-- PARTE 2: CONFIRMAÇÃO DE PEDIDO
-- MÉTODO DE AQUISIÇÃO 2.1: 
UPDATE Pedido SET tipo='Compra' WHERE id=103;
-- PAGAMENTO 2.2:
UPDATE Pedido SET forma_pagamento='Pix', valor_total = 58 WHERE id = 103;
-- PAGAMENTO 2.2:
UPDATE Pedido SET
    status='Aprovado', data_ped=TO_DATE('10/10/2023', 'DD/MM/YYYY')
    WHERE id = 103;

-- PARTE 3: FINALIZAÇÃO
UPDATE Pedido SET data_fim=TO_DATE('20/10/2023', 'DD/MM/YYYY') WHERE id=103;

-- REEMBOLSO
UPDATE Pedido SET status='Em reembolso', motivo_reemb='Tamanho do produto',

-- PARTE 1: CRIAÇÃO DO PEDIDO
INSERT INTO Pedido (id, id_usuario, status) VALUES (104, 4, 'Aguardando');
INSERT INTO Carrinho VALUES (104, 1, 2, 40, 5); 
INSERT INTO Carrinho VALUES (104, 5, 1, 39, 5);

-- PARTE 2: CONFIRMAÇÃO DE PEDIDO
-- MÉTODO DE AQUISIÇÃO 2.1:
UPDATE Pedido SET tipo='Compra' WHERE id=104;
-- PAGAMENTO 2.2:
UPDATE Pedido SET forma_pagamento='Pix', valor_total = 79 WHERE id = 104;
-- CONFIRMAÇÃO 2.3:
UPDATE Pedido SET status='Aprovado', data_ped=TO_DATE('15/10/2023', 'DD/MM/YYYY')
	WHERE id = 104;

-- PARTE 3: FINALIZAÇÃO
UPDATE Pedido SET data_fim=TO_DATE('23/10/2023', 'DD/MM/YYYY') WHERE id=104;

-- Reembolso
UPDATE Pedido SET status='Em reembolso', motivo_reemb='Produto quebrado' WHERE id=104;
-- Reembolso finalizado
UPDATE Pedido SET status='Reembolsado', data_reemb=TO_DATE('02/11/2023', 'DD/MM/YYYY') WHERE id=104;



/* SELECTS */
-- TODOS PEDIDOS
SELECT * FROM Pedido ORDER BY id ASC;

-- TODOS CARRINHOS
SELECT * FROM Carrinho ORDER BY id_pedido ASC;

-- TODOS LIVRO
SELECT * FROM Livro WHERE condicao = 'usado';

-- CADASTRO USUARIO
INSERT INTO Usuario VALUES (1, 'Eric Castro', 'cliente', 'ericc14@gmail.com', '12345678', '(11) 95555-9999', 'Rua dos Guararapes, 745, São Paulo-SP');

-- FUNÇÕES VITRINE
SELECT titulo, autor, editora, paginas, volume, idioma, ano_publicacao, condicao, valor_unitario, pontos_troca FROM Livro WHERE id = 1;

INSERT INTO Pedido (id, id_usuario, tipo, status) VALUES (105, 1, 'Compra', 'Aguardando'); 
INSERT INTO Carrinho VALUES (105, 5, 1, 39, 2);

INSERT INTO Pedido (id, id_usuario, status) VALUES (98, 3, 'Aguardando');
INSERT INTO Carrinho VALUES (98, 7, 1, 22, 2);

INSERT INTO Pedido (id, id_usuario, status) VALUES (100, 1, 'Aguardando');
INSERT INTO Carrinho VALUES (100, 5, 1, 39, 5);
INSERT INTO Carrinho VALUES (100, 2, 2, 100, 2);
UPDATE Pedido SET tipo='Compra' WHERE id=100;

INSERT INTO Pedido (id, id_usuario, tipo, status) VALUES (106, 3, 'Empréstimo', 'Aguardando');
INSERT INTO Carrinho VALUES (106, 3, 1, 15, 2); 


-- FUNÇÕES DO CARRINHO
SELECT titulo, valor_unitario, pontos_troca FROM Livro WHERE id=3 or id=4;

UPDATE Carrinho SET quantidade = 3, infratotal = 66, pontos_totais = 9 WHERE id_pedido = 98 AND id_livro = 7;

delete FROM Carrinho WHERE id_pedido = 98 AND id_livro = 7;

SELECT id_pedido, SUM(pontosTotais) "Subtotal troca", SUM(infratotal) "Subtotal preço" FROM Carrinho WHERE id_pedido = 102 
    GROUP BY id_pedido ORDER BY id_pedido ASC;

UPDATE Carrinho SET quantidade = 3, infratotal = 66 WHERE id_pedido = 98 AND id_livro = 7;

UPDATE Pedido SET tipo='Empréstimo' WHERE id=99;

SELECT id_pedido, SUM(quantidade) "Total de Livros" FROM Carrinho WHERE id_pedido = 102 GROUP BY id_pedido ORDER BY id_pedido ASC;

-- CONFIRMAÇÃO PEDIDO (COMPRA, EMPRÉSTIMO, PERMUTA)
SELECT us.nome, us.endereco, l.titulo, l.condicao, c.quantidade FROM Usuario us 
    INNER JOIN Pedido p ON us.id=p.id_usuario
    INNER JOIN Carrinho c ON p.id=c.id_pedido
    INNER JOIN Livro l ON c.id_livro=l.id
    WHERE us.id = 4 AND p.id = 104;

SELECT us.nome, us.endereco, l.titulo, l.condicao, c.pontos_totais FROM Usuario us 
    INNER JOIN Pedido p ON us.id=p.id_usuario
    INNER JOIN Carrinho c ON p.id=c.id_pedido
    INNER JOIN Livro l ON c.id_livro=l.id
    WHERE us.id = 1 AND p.id = 101;

UPDATE Pedido SET status='Aprovado', data_ped=TO_DATE('17/11/2023', 'DD/MM/YYYY') WHERE id = 101;

SELECT valor_total FROM Pedido WHERE id = 100;

SELECT SUM(pontos_totais) "Subtotal troca" FROM Carrinho WHERE id_pedido = 101 
    GROUP BY id_pedido ORDER BY id_pedido ASC;

-- HISTÓRICO PEDIDOS
SELECT p.id, p.status, p.data_ped

-- PAGAMENTO
UPDATE Pedido SET forma_pagamento='Cartão', valor_total=270 WHERE id = 100;

-- REEMBOLSO (SOLICITAR)
UPDATE Pedido SET status='Em reembolso', motivo_reemb='Produto quebrado' WHERE id=104;

-- CADASTRO FUNCIONÁRIOS
INSERT INTO Usuario (id, nome, tipo, email, senha, telefone)
    VALUES (2, 'Eric Castro', 'funcionário', 'ericc14@gmail.com', '12345678', '(11) 95555-9999');

-- LIVROS CADASTRADOS (VER)
SELECT id, titulo, qtd_disponivel, qtd_reservado FROM Livro;
SELECT titulo, qtd_disponivel, qtd_reservado FROM Livro WHERE id = 2;

-- CADASTRAR LIVRO
INSERT INTO Livro VALUES (1, 'Memórias Póstumas', 'Machado De Assis', 'Antofágica', 200, 2, 'PT/BR', 2007, 'novo', 8, 2, 20, 2);

-- LIVROS EM CADA PEDIDO
SELECT p.id, p.tipo, p.status, us.nome, c.id_livro, l.titulo, l.condicao, p.tipo FROM Pedido p
    INNER JOIN Carrinho c ON p.id=c.id_pedido
    INNER JOIN Livro l ON l.id=c.id_livro 
    INNER JOIN Usuario us ON us.id=p.id_usuario
    WHERE us.id=4 ORDER BY id ASC;
    
-- LIVROS EM CADA PEDIDO DE DETERMINADO USUARIO
SELECT p.id "Pedido", p.tipo, p.status, p.id_usuario, us.nome, c.id_livro, l.titulo, l.condicao, p.tipo FROM Pedido p
    INNER JOIN Carrinho c ON p.id=c.id_pedido
    INNER JOIN Livro l ON l.id=c.id_livro
    INNER JOIN Usuario us ON us.id=p.id_usuario
    WHERE p.id_usuario = 1;

-- LIVROS DE UM DETERMINADO PEDIDO DE UM DETERMINADO USUARIO
SELECT p.id "Pedido", p. tipo, p.status, p.id_usuario, us.nome, c.id_livro, l.titulo, l.condicao, p.tipo FROM Pedido p
    INNER JOIN Carrinho c ON p.id=c.id_pedido
    INNER JOIN Livro l ON l.id=c.id_livro
    INNER JOIN Usuario us ON us.id=p.id_usuario
    WHERE p.id_usuario = 1 AND p.id=100;


-- SUBTOTAL E SEUS RESPECTIVOS USUARIOS
SELECT c.id_pedido, p.id_usuario, SUM(c.infratotal) "Subtotal" FROM Carrinho c 
    INNER JOIN Pedido p ON p.id=c.id_pedido
	GROUP BY c.id_pedido, p.id_usuario ORDER BY c.id_pedido ASC;

-- TODAS COMPRAS
SELECT * FROM Pedido WHERE tipo = 'Compra';
