-- INSERÇÕES DOS PEDIDOS EM CONJUNTO COM CARRINHO
/* Após clicar em adicionar ao carrinho: 
	1-será aberto um pedido
	2-será feita, no carrinho, a escolha de como deseja adquirir este produto (compra ou empréstimo)
	3-processos posteriores em função do método de aquisição selecionado
*/

insert into Pedido (id, id_usuario, status) values (98, 3, 'Aguardando');
insert into Carrinho values (98, 7, 1, 22, 2);

insert into Pedido (id, id_usuario, status) values (99, 4, 'Aguardando');
insert into Carrinho values (99, 6, 1, 27, 4);
update Pedido set tipo='Empréstimo' where id=99;
-------------------------- PEDIDO DO TIPO COMPRA ------------------------------
-- PARTE 1: CRIAÇÃO DE PEDIDO
insert into Pedido (id, id_usuario, status) values (100, 1, 'Aguardando');
insert into Carrinho values (100, 5, 1, 39, 5);
insert into Carrinho values (100, 2, 2, 100, 2);

-- PARTE 2: CONFIRMAÇÃO DE PEDIDO
-- MÉTODO DE AQUISIÇÃO 2.1: 
update Pedido set tipo='Compra' where id=100;
-- PAGAMENTO 2.2:
update Pedido set forma_pagamento='Cartão', valor_total = 270 where id = 100;
-- CONFIRMAÇÃO 2.3:
update Pedido set status='Aprovado', data_ped=TO_DATE('06/11/2023', 'DD/MM/YYYY'),
	where id = 100;

-- PARTE 3: FINALIZAÇÃO
update Pedido set data_fim=TO_DATE('12/11/2023', 'DD/MM/YYYY') where id=100; 

-------------------- PEDIDO DO TIPO COMPRA COM PERMUTA --------------------------
-- PARTE 1: CRIAÇÃO DE PEDIDO
insert into Pedido (id, id_usuario, status) values (101, 1, 'Aguardando'); 
insert into Carrinho values (101, 5, 1, 39, 2);

-- PARTE 2: CONFIRMAÇÃO DE PEDIDO
-- MÉTODO DE AQUISIÇÃO 2.1: 
update Pedido set tipo='Compra' where id=101;
-- PAGAMENTO 2.2:
update Pedido set forma_pagamento='Permuta' where id = 101;
-- CONFIRMAÇÃO 2.3:
update Pedido set
    status='Aprovado', data_ped=TO_DATE('17/11/2023', 'DD/MM/YYYY')
    where id = 101;

-- PARTE 3: FINALIZAÇÃO
update Pedido set data_fim=TO_DATE('22/11/2023', 'DD/MM/YYYY') where id=101;

---------------------- PEDIDO DO TIPO EMPRÉSTIMO ----------------------
-- PARTE 1: CRIAÇÃO DE PEDIDO
insert into Pedido (id, id_usuario, status) values (102, 3, 'Aguardando');
insert into Carrinho values (102, 3, 1, 15, 2); 
insert into Carrinho values (102, 4, 1, 25, 2);

-- PARTE 2: CONFIRMAÇÃO DE PEDIDO
-- PARTE 2.1: MÉTODO DE AQUISIÇÃO:
update Pedido set tipo='Empréstimo' where id=102;
-- CONFIRMAÇÃO 2.2:
update Pedido set 
    status='Aprovado', data_ped=TO_DATE('17/11/2023', 'DD/MM/YYYY') where id = 102;

-- PARTE 3: FINALIZAÇÃO
-- Emprestado (entregue)
update Pedido set status='Emprestado', data_emp=TO_DATE('24/11/2023', 'DD/MM/YYYY'), data_fim=TO_DATE('02/01/2024', 'DD/MM/YYYY') 
    where id = 102;
-- Devolvido
update Pedido set
    status='Devolvido', data_fim=TO_DATE('16/12/2024', 'DD/MM/YYYY') where id = 102;

----------------------- REEMBOLSO --------------------------
-- PARTE 1: CRIAÇÃO DE PEDIDO
insert into Pedido (id, id_usuario, status) values (103, 5, 'Aguardando');
insert into Carrinho values (103, 6, 1, 27, 4); 
insert into Carrinho values (103, 7, 1, 22, 3);

-- PARTE 2: CONFIRMAÇÃO DE PEDIDO
-- MÉTODO DE AQUISIÇÃO 2.1: 
update Pedido set tipo='Compra' where id=103;
-- PAGAMENTO 2.2:
update Pedido set forma_pagamento='Pix', valor_total = 58 where id = 103;
-- PAGAMENTO 2.2:
update Pedido set
    status='Aprovado', data_ped=TO_DATE('10/10/2023', 'DD/MM/YYYY')
    where id = 103;

-- PARTE 3: FINALIZAÇÃO
update Pedido set data_fim=TO_DATE('20/10/2023', 'DD/MM/YYYY') where id=103;

-- REEMBOLSO
update Pedido set status='Em reembolso', motivo_reemb='Tamanho do produto',

-- PARTE 1: CRIAÇÃO DO PEDIDO
insert into Pedido (id, id_usuario, status) values (104, 4, 'Aguardando');
insert into Carrinho values (104, 1, 2, 40, 5); 
insert into Carrinho values (104, 5, 1, 39, 5);

-- PARTE 2: CONFIRMAÇÃO DE PEDIDO
-- MÉTODO DE AQUISIÇÃO 2.1:
update Pedido set tipo='Compra' where id=104;
-- PAGAMENTO 2.2:
update Pedido set forma_pagamento='Pix', valor_total = 79 where id = 104;
-- CONFIRMAÇÃO 2.3:
update Pedido set status='Aprovado', data_ped=TO_DATE('15/10/2023', 'DD/MM/YYYY')
	where id = 104;

-- PARTE 3: FINALIZAÇÃO
update Pedido set data_fim=TO_DATE('23/10/2023', 'DD/MM/YYYY') where id=104;

-- Reembolso
update Pedido set status='Em reembolso', motivo_reemb='Produto quebrado' where id=104;
-- Reembolso finalizado
update Pedido set status='Reembolsado', data_reemb=TO_DATE('02/11/2023', 'DD/MM/YYYY') where id=104;



/* SELECTS */
-- TODOS PEDIDOS
select * from Pedido order by id asc;

-- TODOS CARRINHOS
select * from Carrinho order by id_pedido asc;

-- CADASTRO USUARIO
insert into Usuario values (1, 'Eric Castro', 'cliente', 'ericc14@gmail.com', '12345678', '(11) 95555-9999', 'Rua dos Guararapes, 745, São Paulo-SP');

-- FUNÇÕES VITRINE
select titulo, autor, editora, paginas, volume, idioma, ano_publicacao, condicao, valor_unitario, pontos_troca from Livro where id = 1;

insert into Pedido (id, id_usuario, tipo, status) values (105, 1, 'Compra', 'Aguardando'); 
insert into Carrinho values (105, 5, 1, 39, 2);

insert into Pedido (id, id_usuario, status) values (98, 3, 'Aguardando');
insert into Carrinho values (98, 7, 1, 22, 2);

insert into Pedido (id, id_usuario, status) values (100, 1, 'Aguardando');
insert into Carrinho values (100, 5, 1, 39, 5);
insert into Carrinho values (100, 2, 2, 100, 2);
update Pedido set tipo='Compra' where id=100;

insert into Pedido (id, id_usuario, tipo, status) values (106, 3, 'Empréstimo', 'Aguardando');
insert into Carrinho values (106, 3, 1, 15, 2); 


-- FUNÇÕES DO CARRINHO
select titulo, valor_unitario, pontos_troca from Livro where id=3 or id=4;

update Carrinho set quantidade = 3, infratotal = 66, pontos_totais = 9 where id_pedido = 98 and id_livro = 7;

delete from Carrinho where id_pedido = 98 and id_livro = 7;

select id_pedido, SUM(pontosTotais) "Subtotal troca", SUM(infratotal) "Subtotal preço" from Carrinho where id_pedido = 102 
    group by id_pedido order by id_pedido asc;

update Carrinho set quantidade = 3, infratotal = 66 where id_pedido = 98 and id_livro = 7;

update Pedido set tipo='Empréstimo' where id=99;

select id_pedido, SUM(quantidade) "Total de Livros" from Carrinho where id_pedido = 102 group by id_pedido order by id_pedido asc;

-- CONFIRMAÇÃO PEDIDO (COMPRA, EMPRÉSTIMO, PERMUTA)
select us.nome, us.endereco, l.titulo, l.condicao, c.quantidade from Usuario us 
    inner join Pedido p ON us.id=p.id_usuario
    inner join Carrinho c ON p.id=c.id_pedido
    inner join Livro l ON c.id_livro=l.id
    where us.id = 4 and p.id = 104;

select us.nome, us.endereco, l.titulo, l.condicao, c.pontos_totais from Usuario us 
    inner join Pedido p ON us.id=p.id_usuario
    inner join Carrinho c ON p.id=c.id_pedido
    inner join Livro l ON c.id_livro=l.id
    where us.id = 1 and p.id = 101;

update Pedido set status='Aprovado', data_ped=TO_DATE('17/11/2023', 'DD/MM/YYYY') where id = 101;

select valor_total from Pedido where id = 100;

select SUM(pontos_totais) "Subtotal troca" from Carrinho where id_pedido = 101 
    group by id_pedido order by id_pedido asc;

-- PAGAMENTO
update Pedido set forma_pagamento='Cartão', valor_total=270 where id = 100;

-- REEMBOLSO (SOLICITAR)
update Pedido set status='Em reembolso', motivo_reemb='Produto quebrado' where id=104;

-- CADASTRO FUNCIONÁRIOS
insert into Usuario (id, nome, tipo, email, senha, telefone)
    values (2, 'Eric Castro', 'funcionário', 'ericc14@gmail.com', '12345678', '(11) 95555-9999');

-- LIVROS CADASTRADOS (VER)
select id, titulo, qtd_disponivel, qtd_reservado from Livro;
select titulo, qtd_disponivel, qtd_reservado from Livro where id = 2;

-- CADASTRAR LIVRO
insert into Livro values (1, 'Memórias Póstumas', 'Machado De Assis', 'Antofágica', 200, 2, 'PT/BR', 2007, 'novo', 8, 2, 20, 2);


-- LIVROS EM CADA PEDIDO
select p.id, p.tipo, p.status, us.nome, c.id_livro, l.titulo, l.condicao, p.tipo from Pedido p
    inner join Carrinho c ON p.id=c.id_pedido
    inner join Livro l ON l.id=c.id_livro 
    inner join Usuario us ON 
    order by id asc
    
-- LIVROS EM CADA PEDIDO DE DETERMINADO USUARIO
select p.id "Pedido", p.tipo, p.status, p.id_usuario, us.nome, c.id_livro, l.titulo, l.condicao, p.tipo from Pedido p
    inner join Carrinho c ON p.id=c.id_pedido
    inner join Livro l ON l.id=c.id_livro
    inner join Usuario us ON us.id=p.id_usuario
    where p.id_usuario = 1;

-- LIVROS DE UM DETERMINADO PEDIDO DE UM DETERMINADO USUARIO
select p.id "Pedido", p. tipo, p.status, p.id_usuario, us.nome, c.id_livro, l.titulo, l.condicao, p.tipo from Pedido p
    inner join Carrinho c ON p.id=c.id_pedido
    inner join Livro l ON l.id=c.id_livro
    inner join Usuario us ON us.id=p.id_usuario
    where p.id_usuario = 1 and p.id=100;


-- SUBTOTAL E SEUS RESPECTIVOS USUARIOS
select c.id_pedido, p.id_usuario, SUM(c.infratotal) "Subtotal" from Carrinho c 
    inner join Pedido p ON p.id=c.id_pedido
	group by c.id_pedido, p.id_usuario order by c.id_pedido asc;