--------------- ÁREA DO CLIENTE ---------------

---------- PÁGINA DE LOGIN/CADASTRO ----------

----- INSERÇÃO DOS DADOS -----

-- 1: Ao se cadastrar
INSERT INTO Usuario 
	VALUES (1, 'Eric Castro', 'cliente', 'ericc14@gmail.com', '12345678', '(11) 95555-9999', 'Rua dos Guararapes, 745, São Paulo-SP');
INSERT INTO Usuario 
	VALUES (3, 'Gabriel', 'cliente', 'Gabriel2000@gmail.com', 'ABCD123', '(11) 95555-1001', 'Estrada de taipas, 1990, São Paulo-SP');
INSERT INTO Usuario 
	VALUES (4, 'Geovanna Vieira', 'cliente', 'Geovieira059@gmail.com', 'ABCD123', '(11) 95555-1002', 'Estrada de taipas, 1990, São Paulo-SP');
INSERT INTO Usuario 
	VALUES (5, 'Rosangela Santos', 'cliente', 'Rosangela.santos@gmail.com', '0246810', '(11) 95555-1030', 'Estrada de taipas, 1990, São Paulo-SP');

----- CONSULTA DOS DADOS -----

-- 1: Ao tentar se logar, será consultado as informações do usuário
SELECT email, senha FROM Usuario WHERE email = 'Gabriel2000@gmail.com' AND senha = '12345678';

---------- PÁGINA DE LIVROS À VENDA ----------

----- CONSULTA DOS DADOS -----

-- 1: Ao acessar a página, será exibido os livros disponíveis
SELECT titulo, autor, idioma, condicao, valor_unitario, pontos_troca FROM Livro ORDER BY id ASC;

---------- PÁGINA DA VITRINE DE UM LIVRO ----------

----- INSERÇÃO DOS DADOS -----

-- 1: Ao clicar em comprar, será criado um pedido do tipo "compra"
INSERT INTO Pedido (id, id_usuario, tipo, status) VALUES (105, 1, 'Compra', 'Aguardando'); 
INSERT INTO Carrinho VALUES (105, 5, 1, 39, 2);


-- 2: Ao clicar em adicionar ao carrinho, será criado um pedido em aberto (esperando finalizar na página do carrinho)
INSERT INTO Pedido (id, id_usuario, status) VALUES (98, 3, 'Aguardando');
INSERT INTO Carrinho VALUES (98, 7, 1, 22, 2);
INSERT INTO Pedido (id, id_usuario, status) VALUES (99, 4, 'Aguardando');
INSERT INTO Carrinho VALUES (99, 6, 1, 27, 4);
INSERT INTO Pedido (id, id_usuario, status) VALUES (100, 1, 'Aguardando');
INSERT INTO Carrinho VALUES (100, 5, 1, 39, 5);
INSERT INTO Carrinho VALUES (100, 2, 2, 100, 2);
INSERT INTO Pedido (id, id_usuario, status) VALUES (101, 1, 'Aguardando'); 
INSERT INTO Carrinho VALUES (101, 5, 1, 39, 2);

-- 3: Ao clicar em fazer empréstimo, será criado um pedido do tipo "empréstimo".
INSERT INTO Pedido (id, id_usuario, tipo, status) VALUES (106, 3, 'Empréstimo', 'Aguardando');
INSERT INTO Carrinho VALUES (106, 3, 1, 15, 2); 

----- CONSULTA DOS DADOS -----

-- 1: Ao acessar a página, será exibido as informações do livro
SELECT titulo, autor, editora, paginas, volume, idioma, ano_publicacao, condicao, valor_unitario, pontos_troca FROM Livro WHERE id = 1;

---------- PÁGINA DO CARRINHO ----------

----- ALTERAÇÃO DOS DADOS -----

-- 1: Ao alterar a quantidade de um livro do carrinho
UPDATE Carrinho SET quantidade = 3, infratotal = 66, pontos_totais = 9 WHERE id_pedido = 98 AND id_livro = 7;

-- 2: Ao remover um livro do carrinho
delete FROM Carrinho WHERE id_pedido = 98 AND id_livro = 7;

-- 3: Ao clicar em comprar, será atualizado o tipo do pedido
UPDATE Pedido SET tipo='Compra' WHERE id=100;

-- 4: Ao clicar em fazer empréstimo, será atualizado o tipo do pedido
UPDATE Pedido SET tipo='Empréstimo' WHERE id=99;

----- CONSULTA DOS DADOS -----

-- 1: Ao acessar a página, será exibido
-- 1.1: Informações dos livros escolhidos
SELECT titulo, valor_unitario, pontos_troca FROM Livro WHERE id=3 OR id=4;
-- 1.2: Quantidade total de livros do pedido
SELECT id_pedido, SUM(quantidade) "Total de Livros" FROM Carrinho WHERE id_pedido = 102 GROUP BY id_pedido ORDER BY id_pedido ASC;
-- 1.3: Subtotal do pedido
SELECT id_pedido, SUM(pontosTotais) "Subtotal troca", SUM(infratotal) "Subtotal preço" FROM Carrinho WHERE id_pedido = 102 
    GROUP BY id_pedido ORDER BY id_pedido ASC;

---------- PÁGINA DE FINALIZAÇÃO DE PEDIDOS DO TIPO "COMPRA" ----------

----- ALTERAÇÃO DOS DADOS -----

-- 1: Ao selecionar a forma de pagamento
-- 1.1: Valor monetário
UPDATE Pedido SET forma_pagamento='Cartão', valor_total = 270 WHERE id = 100;
-- 1.2: Pontos de troca (permuta)
UPDATE Pedido SET forma_pagamento='Permuta' WHERE id = 101;

-- 2: Ao confirmar o pedido
UPDATE Pedido SET status='Aprovado', data_ped=TO_DATE('06/11/2023', 'DD/MM/YYYY')
	WHERE id = 100;
UPDATE Pedido SET status='Aprovado', data_ped=TO_DATE('17/11/2023', 'DD/MM/YYYY')
	WHERE id = 101;

-- 3: Ao receber os livros, será concluindo o pedido
UPDATE Pedido SET data_fim=TO_DATE('12/11/2023', 'DD/MM/YYYY') WHERE id=100; 
UPDATE Pedido SET data_fim=TO_DATE('22/11/2023', 'DD/MM/YYYY') WHERE id=101;