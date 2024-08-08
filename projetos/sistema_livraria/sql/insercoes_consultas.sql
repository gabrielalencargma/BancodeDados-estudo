--------------- LOGIN/CADASTRO DE USUÁRIOS ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Ao cadastrar um usuário:
    -- 1.1: Cliente:
    INSERT INTO Usuario 
        VALUES (1, 'Eric Castro', 'cliente', 'ericc14@gmail.com', '12345678', '(11) 95555-9999', 'Rua dos Guararapes, 745, São Paulo-SP');
    INSERT INTO Usuario 
        VALUES (3, 'Gabriel', 'cliente', 'Gabriel2000@gmail.com', 'ABCD123', '(11) 95555-1001', 'Estrada de taipas, 1990, São Paulo-SP');
    INSERT INTO Usuario 
        VALUES (4, 'Geovanna Vieira', 'cliente', 'Geovieira059@gmail.com', 'ABCD123', '(11) 95555-1002', 'Estrada de taipas, 1990, São Paulo-SP');
    INSERT INTO Usuario 
        VALUES (5, 'Rosangela Santos', 'cliente', 'Rosangela.santos@gmail.com', '0246810', '(11) 95555-1030', 'Estrada de taipas, 1990, São Paulo-SP');
    -- 1.2: Funcionário:
    INSERT INTO Usuario (id, nome, tipo, email, senha, telefone)
        VALUES (2, 'Eric Castro', 'funcionário', 'ericc14@gmail.com', '12345678', '(11) 95555-9999');

----- CONSULTA DOS DADOS -----

-- 1: Ao tentar se logar, será consultado as informações de login do usuário.
SELECT email, senha FROM Usuario WHERE email = 'Gabriel2000@gmail.com' AND senha = '12345678';

--------------- EDIÇÃO/CADASTRO DE LIVROS ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Ao cadastrar um livro:
INSERT INTO Livro VALUES (1, 'Memórias Póstumas', 'Machado De Assis', 'Antofágica', 200, 2, 'PT/BR', 2007, 'novo', 8, 2, 20, 2);
INSERT INTO Livro VALUES (2, 'Mentirosos', 'Lockhart', 'Seguinte', 420, 1, 'PT/BR', 2016, 'novo', 7, 7, 50, 4);
INSERT INTO Livro VALUES (3, 'Memórias Póstumas', 'Machado De Assis', 'Antofágica', 200, 2, 'PT/BR', 2007, 'usado', 8, 2, 20, 2);
INSERT INTO Livro VALUES (4, 'Mentirosos', 'Lockhart', 'Seguinte', 420, 1, 'PT/BR', 2016, 'usado', 5, 0, 20, 2);
INSERT INTO Livro VALUES (5, 'Luar vermelho', 'Gabriel', 'Companhia das letras', 226, 2, 'PT/BR', 2014, 'novo', 17, 3, 39, 5);
INSERT INTO Livro VALUES (6, 'Harry Potter 1', 'JK.', 'Rocco', 226, 2, 'PT/BR', 2019, 'usado', 9, 5, 27, 4);
INSERT INTO Livro VALUES (7, 'Harry Potter 2', 'JK.', 'Rocco', 423, 1, 'PT/BR', 2012, 'usado', 11, 2, 22, 3);

----- ALTERAÇÃO DOS DADOS -----

-- 1: Ao alterar as informações de um livro:
UPDATE Livro SET pontos_troca = 2 WHERE id = 4;

----- CONSULTA DOS DADOS -----

-- 1: Ao acessar a área de livros, será exibido todos os livros cadastrados.
SELECT id, titulo, qtd_disponivel, qtd_reservado FROM Livro;

-- 2: Ao selecionar um livro para editá-lo, será exibido todas as suas informações.
SELECT * FROM Livro WHERE id = 2;

--------------- AQUISIÇÃO DE LIVROS ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Ao clicar em "comprar" na vitrine de um livro, será criado um pedido do tipo "compra".
INSERT INTO Pedido (id, id_usuario, tipo, status) VALUES (105, 1, 'Compra', 'Aguardando'); 
INSERT INTO Carrinho VALUES (105, 5, 1, 39, 2);

-- 2: Ao clicar em "adicionar ao carrinho" na vitrine de um livro, será criado um pedido em aberto (esperando finalizar no carrinho de compras).
INSERT INTO Pedido (id, id_usuario, status) VALUES (98, 3, 'Aguardando');
INSERT INTO Carrinho VALUES (98, 7, 1, 22, 2);
INSERT INTO Pedido (id, id_usuario, status) VALUES (99, 4, 'Aguardando');
INSERT INTO Carrinho VALUES (99, 6, 1, 27, 4);
INSERT INTO Pedido (id, id_usuario, status) VALUES (100, 1, 'Aguardando');
INSERT INTO Carrinho VALUES (100, 5, 1, 39, 5);
INSERT INTO Carrinho VALUES (100, 2, 2, 100, 2);
INSERT INTO Pedido (id, id_usuario, status) VALUES (101, 1, 'Aguardando'); 
INSERT INTO Carrinho VALUES (101, 5, 1, 39, 2);
INSERT INTO Pedido (id, id_usuario, status) VALUES (104, 4, 'Aguardando');
INSERT INTO Carrinho VALUES (104, 1, 2, 40, 5); 
INSERT INTO Carrinho VALUES (104, 5, 1, 39, 5);

-- 3: Ao clicar em "empréstimo" na vitrine de um livro, será criado um pedido do tipo "empréstimo".
INSERT INTO Pedido (id, id_usuario, tipo, status) VALUES (106, 3, 'Empréstimo', 'Aguardando');
INSERT INTO Carrinho VALUES (106, 3, 1, 15, 2); 

----- CONSULTA DOS DADOS -----

-- 1: Ao acessar a área de livros à venda, será exibido todos os livros disponíveis.
SELECT titulo, autor, idioma, condicao, valor_unitario, pontos_troca FROM Livro ORDER BY id ASC;

-- 2: Ao entrar na vitrine de um livro, será exibido todas as suas informações.
SELECT titulo, autor, editora, paginas, volume, idioma, ano_publicacao, condicao, valor_unitario, pontos_troca FROM Livro WHERE id = 1;

--------------- CARRINHO DE COMPRAS ---------------

----- ALTERAÇÃO DOS DADOS -----

-- 1: Ao alterar a quantidade de um livro no carrinho:
UPDATE Carrinho SET quantidade = 3, infratotal = 66, pontos_totais = 9 WHERE id_pedido = 98 AND id_livro = 7;

-- 2: Ao remover um livro do carrinho:
delete FROM Carrinho WHERE id_pedido = 98 AND id_livro = 7;

-- 3: Ao clicar em "comprar", será atualizado o tipo do pedido.
UPDATE Pedido SET tipo='Compra' WHERE id=100;
UPDATE Pedido SET tipo='Compra' WHERE id=104;

-- 4: Ao clicar em "empréstimo", será atualizado o tipo do pedido.
UPDATE Pedido SET tipo='Empréstimo' WHERE id=99;

----- CONSULTA DOS DADOS -----

-- 1: Ao acessar o carrinho de compras, será exibido:
    -- 1.1: Informações dos livros escolhidos:
    SELECT titulo, valor_unitario, pontos_troca FROM Livro WHERE id=3 OR id=4;
    -- 1.2: Quantidade total de livros:
    SELECT id_pedido, SUM(quantidade) "Total de Livros" FROM Carrinho WHERE id_pedido = 102 GROUP BY id_pedido ORDER BY id_pedido ASC;
    -- 1.3: Subtotal do pedido:
    SELECT id_pedido, SUM(pontosTotais) "Subtotal troca", SUM(infratotal) "Subtotal preço" FROM Carrinho WHERE id_pedido = 102 
        GROUP BY id_pedido ORDER BY id_pedido ASC;

--------------- FINALIZAÇÃO DE PEDIDOS DO TIPO "COMPRA" ---------------

----- ALTERAÇÃO DOS DADOS -----

-- 1: Ao selecionar uma forma de pagamento:
    -- 1.1: Valor monetário:
    UPDATE Pedido SET forma_pagamento='Cartão', valor_total = 270 WHERE id = 100;
    UPDATE Pedido SET forma_pagamento='Pix', valor_total = 79 WHERE id = 104;
    -- 1.2: Pontos de troca (permuta):
    UPDATE Pedido SET forma_pagamento='Permuta' WHERE id = 101;

-- 2: Ao confirmar um pedido:
UPDATE Pedido SET status='Aprovado', data_ped=TO_DATE('06/11/2023', 'DD/MM/YYYY'),
	WHERE id = 100;
    valor_total = (SELECT SUM(infratotal) FROM Carrinho WHERE id_pedido = 100)
UPDATE Pedido SET status='Aprovado', data_ped=TO_DATE('17/11/2023', 'DD/MM/YYYY'),
    valor_total = (SELECT SUM(pontos_totais) FROM Carrinho WHERE id_pedido = 101)
	WHERE id = 101;
UPDATE Pedido SET status='Aprovado', data_ped=TO_DATE('15/10/2023', 'DD/MM/YYYY'), 
    valor_total = (SELECT SUM(infratotal) FROM Carrinho WHERE id_pedido = 104)
	WHERE id = 104;

-- 3: Ao receber os livros, será concluído o pedido.
UPDATE Pedido SET data_fim=TO_DATE('12/11/2023', 'DD/MM/YYYY') WHERE id=100; 
UPDATE Pedido SET data_fim=TO_DATE('22/11/2023', 'DD/MM/YYYY') WHERE id=101;
UPDATE Pedido SET data_fim=TO_DATE('23/10/2023', 'DD/MM/YYYY') WHERE id=104;

----- CONSULTA DOS DADOS -----

-- 1: Ao acessar a área de finalização de um pedido, será exibido as suas informações.
    -- 1.1: Pedidos com pagamento em valor monetário:
    SELECT us.nome, us.endereco, l.titulo, l.condicao, l.valor_unitario, c.quantidade, c.infratotal, p.forma_pagamento FROM Usuario us 
        INNER JOIN Pedido p ON us.id=p.id_usuario
        INNER JOIN Carrinho c ON p.id=c.id_pedido
        INNER JOIN Livro l ON c.id_livro=l.id
        WHERE us.id = 4 AND p.id = 104;
    SELECT SUM(infratotal) "Total preço" FROM Carrinho WHERE id_pedido = 104 
        GROUP BY id_pedido ORDER BY id_pedido ASC;
    -- 1.1: Pedidos com pagamento em permuta:
    SELECT us.nome, us.endereco, l.titulo, l.condicao, l.pontos_troca, c.quantidade, c.pontos_totais, p.forma_pagamento FROM Usuario us 
        INNER JOIN Pedido p ON us.id=p.id_usuario
        INNER JOIN Carrinho c ON p.id=c.id_pedido
        INNER JOIN Livro l ON c.id_livro=l.id
        WHERE us.id = 1 AND p.id = 101;
    SELECT SUM(pontos_totais) "Total troca" FROM Carrinho WHERE id_pedido = 101 
        GROUP BY id_pedido ORDER BY id_pedido ASC;

--------------- FINALIZAÇÃO DE PEDIDOS DO TIPO "EMPRÉSTIMO" ---------------

----- ALTERAÇÃO DOS DADOS -----

-- 1: Ao confirmar um pedido:
UPDATE Pedido SET 
    status='Aprovado', data_ped=TO_DATE('17/11/2023', 'DD/MM/YYYY') WHERE id = 102;

-- 2: Ao emprestar os livros de um pedido:
UPDATE Pedido SET 
	status='Emprestado', data_emp=TO_DATE('24/11/2023', 'DD/MM/YYYY'), data_fim=TO_DATE('02/01/2024', 'DD/MM/YYYY') WHERE id = 102;

-- 3: Ao ser devolvido os livros, será concluído o pedido.
UPDATE Pedido SET
    status='Devolvido', data_fim=TO_DATE('16/12/2024', 'DD/MM/YYYY') WHERE id = 102;

----- CONSULTA DOS DADOS -----

-- 1: Ao acessar a área de finalização de um pedido, será exibido as suas informações.
SELECT us.nome, us.endereco, l.titulo, l.condicao, c.quantidade FROM Usuario us 
    INNER JOIN Pedido p ON us.id=p.id_usuario
    INNER JOIN Carrinho c ON p.id=c.id_pedido
    INNER JOIN Livro l ON c.id_livro=l.id
    WHERE us.id = 4 AND p.id = 102;

--------------- REEMBOLSO DE PEDIDOS ---------------

----- ALTERAÇÃO DOS DADOS -----

-- 1: Ao solicitar o reembolso de um pedido:
UPDATE Pedido SET status='Em reembolso', motivo_reemb='Produto quebrado' WHERE id=104;

-- 2: Ao reembolsar:
UPDATE Pedido SET status='Reembolsado', data_reemb=TO_DATE('02/11/2023', 'DD/MM/YYYY') WHERE id=104;

---------- DETALHES DE PEDIDOS ----------

----- CONSULTA DOS DADOS -----

-- 1: Ao procurar todos os pedidos criados:
SELECT p.id "Pedido", p.data_ped, us.nome, p.tipo, p.valor_total, p.status 
    FROM Pedido p
    INNER JOIN Carrinho c ON p.id=c.id_pedido
    INNER JOIN Usuario us ON us.id=p.id_usuario
    GROUP BY c.id_pedido, p.id_usuario ORDER BY c.id_pedido ASC;

-- 2: Ao procurar todos os pedidos de um usuário:
SELECT p.id "Pedido", p.data_ped, us.nome, p.tipo, p.valor_total, p.status 
    FROM Pedido p
    INNER JOIN Carrinho c ON p.id=c.id_pedido
    INNER JOIN Usuario us ON us.id=p.id_usuario
    WHERE us.id=4 ORDER BY p.id ASC;

-- 3: Ao selecionar um pedido de um usuário, será exibido as suas informações.
SELECT p.id "Pedido", p.data_ped, p.tipo, p.status, p.valor_total, p.data_fim, us.nome, us.endereco, l.titulo, l.condicao, l.valor_unitario, c.quantidade 
    FROM Pedido p
    INNER JOIN Carrinho c ON p.id=c.id_pedido
    INNER JOIN Livro l ON l.id=c.id_livro
    INNER JOIN Usuario us ON us.id=p.id_usuario
    WHERE p.id_usuario = 1 AND p.id=100;