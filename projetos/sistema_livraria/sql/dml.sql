
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
------------------------------------------------------------------------

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
