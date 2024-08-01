--------------- USUÁRIOS ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Cadastrando usuários
-- 1.1: Alunos
insert into Usuarios values (2222204880, 'Aluno', 'abcd1234', 'Geovanna Vieira', 'geovanna.lascouse@cjs.edu.br', '(11) 99999-9998');
insert into Usuarios values (2222204890, 'Aluno', 'abcd1234', 'Eric Castro', 'eric.castro@cjs.edu.br', '(11) 99999-1006');
insert into Usuarios values (2222204891, 'Aluno', 'abcd1234', 'Rodrigo Mendes', 'rodrigo039@cjs.edu.br', '(11) 99999-1007');
-- 1.2: Funcionários
insert into Usuarios values (2020569887, 'Professora', 'abc1234', 'Jorgina', 'jorgina.santos@cjs.edu.br', '(11) 99999-1000');
insert into Usuarios values (2222204885, 'Professora', 'abc1234', 'Marina', 'mari@cjs.edu.br', '(11) 99999-9999');
insert into Usuarios values (2222204888, 'Professora', 'abc1234', 'Márcia', 'marcinha@cjs.edu.br', '(11) 99999-1001');
insert into Usuarios values (2222204889, 'Professor', 'abc1234', 'Robson', 'rob@cjs.edu.br', '(11) 99999-1002');
insert into Usuarios values (2222204886, 'Professora', 'abc1234', 'Linda', 'linda@cjs.edu.br', '(11) 99999-1003');
insert into Usuarios values (2222204884, 'Professor', 'abc1234', 'Cleber', 'cleb@cjs.edu.br', '(11) 99999-1004');
insert into Usuarios values (5555555555, 'Auxiliar Adm', 'xxxyyy', 'Chico Bento', 'chico1000@cjs.edu.br', '(11) 99999-1008');
insert into Usuarios values (9999999999, 'Diretor', 'xxxyyy', 'Eduardo Costa', 'eduardo.costa@cjs.edu.br', '(11) 99999-1009');

----- EDIÇÃO DOS DADOS -----

-- 1: Atualizando um usuário
update Usuarios set telefone = '(11) 99999-5454' where rs_ra = 2222204889;

-- 2: Excluindo um usuário
delete from Usuarios where rs_ra = 2222204885;

----- SELEÇÃO DOS DADOS -----

-- 1: Consultando todos os usuários
select rs_ra, nome, cargo, email, telefone from Usuarios;

-- 2: Consultando um usuário
select nome, cargo, email, telefone from Usuarios where rs_ra = 2222204889;


-- Tabela "Cronograma"
insert into Cronograma values (1, 2020569887, 'Português', 40, 'Segunda', 1);
insert into Cronograma values (2, 2020569887, 'Inglês', 40, 'Segunda', 2);
insert into Cronograma values (3, 2222204888, 'Matemática', 40, 'Segunda', 3);
insert into Cronograma values (4, 2222204888, 'Matemática', 40, 'Quinta', 1);
insert into Cronograma values (5, 2222204889, 'Geografia', 40, 'Segunda', 4);
insert into Cronograma values (6, 2222204885, 'Filosofia', 40, 'Terça', 1);
insert into Cronograma values (7, 2222204885, 'Filosofia', 40, 'Terça', 2);
insert into Cronograma values (8, 2222204885, 'História', 40, 'Terça', 3);
insert into Cronograma values (9, 2020569887, 'Inglês', 41, 'Segunda', 1);
insert into Cronograma values (10, 2222204884, 'História', 41, 'Segunda', 2);
insert into Cronograma values (11, 2222204884, 'Geografia', 41, 'Segunda', 3);
insert into Cronograma values (12, 2222204885, 'Português', 41, 'Segunda', 4);
insert into Cronograma values (13, 2222204885, 'Filosofia', 41, 'Segunda', 5);
insert into Cronograma values (14, 2222204886, 'Matemática', 41, 'Terça', 1);
insert into Cronograma values (15, 2020569887, 'Português', 39, 'Segunda', 1);
insert into Cronograma values (16, 2020569887, 'Português', 39, 'Segunda', 2);
insert into Cronograma values (17, 2020569887, 'Português', 42, 'Segunda', 1);
insert into Cronograma values (18, 2020569887, 'Inglês', 42, 'Quarta', 1);
insert into Cronograma values (19, 2222204888, 'Matemática', 42, 'Segunda', 2);
insert into Cronograma values (20, 2222204888, 'Matemática', 42, 'Quinta', 1);
insert into Cronograma values (21, 2020569887, 'Inglês', 39, 'Terça', 1);
insert into Cronograma values (22, 2222204885, 'Português', 41, 'Terça', 2);
insert into Cronograma values (23, 2222204885, 'Português', 41, 'Terça', 3);
insert into Cronograma values (24, 2222204884, 'Geografia', 39, 'Quarta', 1);
insert into Cronograma values (25, 2222204885, 'História', 39, 'Sexta', 1);
insert into Cronograma values (26, 2222204889, 'Geografia', 40, 'Quinta', 2);
insert into Cronograma values (27, 2222204889, 'Geografia', 40, 'Sexta', 1);
insert into Cronograma values (28, 2222204889, 'Geografia', 42, 'Segunda', 3);
insert into Cronograma values (29, 2222204889, 'Geografia', 42, 'Segunda', 4);
insert into Cronograma values (30, 2222204889, 'Geografia', 42, 'Quarta', 2);
insert into Cronograma values (31, 2222204885, 'Filosofia', 42, 'Sexta', 1);
insert into Cronograma values (32, 2222204884, 'História', 42, 'Quinta', 2);
insert into Cronograma values (33, 2222204888, 'Matemática', 39, 'Quinta', 1);
insert into Cronograma values (34, 2222204888, 'Matemática', 39, 'Quinta', 2);
insert into Cronograma values (35, 2222204888, 'Matemática', 39, 'Terça', 2);
insert into Cronograma values (36, 2222204888, 'Matemática', 39, 'Segunda', 3);

-- Tabela "Boletim"
insert into Boletim values (1, 2222204880, 'Português', 2, 10, 9, 9.5, 3, 15, 'Aprovado', 40);
insert into Boletim values (2, 2222204880, 'Matemática', 2, 8, 7, 7.5, 0, 15, 'Aprovado', 40);
insert into Boletim values (3, 2222204880, 'Matemática', 1, 9, 8.5, 7.5, 0, 15, 'Aprovado', 38);
insert into Boletim values (4, 2222204890, 'Geografia', 3, 6.5, 8.2, 7.35, 1, 10, 'Aprovado', 41);
insert into Boletim values (5, 2222204890, 'História', 4, 7, 10, 8.5, 2, 10, 'Aprovado', 41);
insert into Boletim values (6, 2222204890, 'Português', 4, 8, 10, 9, 4, 15,	'Aprovado', 41);


-- Tabela "Contatos"
insert into Contatos values (1, 'davicosta@gmail.com', '(11) 98888-8888', 'Matrícula', to_date('22/09/2023', 'DD/MM/YYYY'));
insert into Contatos (id, email, mensagem, dia) values (2, 'lucy22@gmail.com', 'Documentação', to_date('17/12/2023', 'DD/MM/YYYY'));
insert into Contatos (id, telefone, mensagem, dia) values (3, '(11) 99876-5432', 'Documentação', to_date('21/11/2023', 'DD/MM/YYYY'));

-- INSERÇÕES OCORRÊNCIAS
insert into Ocorrencias values (100, 'Quebrou nariz do colega', to_date('31/08/2023', 'DD/MM/YYYY'));
insert into Ocorrencias_Alunos values (100, 2222204890);
insert into Ocorrencias_Alunos values (100, 2222204891);

insert into Ocorrencias values (101, 'Passou mal', to_date('22/10/2023', 'DD/MM/YYYY'));
insert into Ocorrencias_Alunos values (101, 2222204880);

insert into Ocorrencias values (102, 'Riscou a mesa', to_date('12/09/2023', 'DD/MM/YYYY'));
insert into Ocorrencias_Alunos values (102, 2222204890);


	-- CONSULTAS USUÁRIOS
select * from Usuarios;
select * from Usuarios where cargo = 'Aluno';
select * from Usuarios where cargo = 'Professor' OR cargo = 'Professora';
select * from Usuarios where cargo = 'Auxiliar Adm';

-- PROFESSORES QUE DÃO AULA À DETERMINADA TURMA
	-- DETALHADO
select distinct us.nome "Professor(a)", t.ano, t.serie, t.data_ano
    from Usuarios us inner join Cronograma cr ON us.rs_ra = cr.rs_prof
    inner join Turmas t ON cr.id_turma = t.id
    where t.id = 40 order by us.nome asc;
select distinct us.nome "Professor(a)", t.ano, t.serie, t.data_ano
    from Usuarios us inner join Cronograma cr ON us.rs_ra = cr.rs_prof
    inner join Turmas t ON cr.id_turma = t.id
    where t.id = 41 order by us.nome asc;
	-- SIMPLIFICADO
select distinct us.nome "Professor(a)", cr.id_turma "Turma"
	from Usuarios us inner join Cronograma cr ON us.rs_ra = cr.rs_prof
    where cr.id_turma = 40 order by us.nome asc;
select distinct us.nome "Professor(a)", cr.id_turma "Turma"
	from Usuarios us inner join Cronograma cr ON us.rs_ra = cr.rs_prof
    where cr.id_turma = 41 order by us.nome asc;

-- DISCIPLINAS POR TURMA
	-- DETALHADO
select distinct cr.disciplina, t.ano, t.serie, t.data_ano
    from Cronograma cr inner join Turmas t ON cr.id_turma = t.id
    where t.id = 40;
select distinct cr.disciplina, t.ano, t.serie, t.data_ano
    from Cronograma cr inner join Turmas t ON cr.id_turma = t.id
    where t.id = 41;
	-- SIMPLIFICADO
select distinct disciplina from Cronograma where id_turma = 40;
select distinct disciplina from Cronograma where id_turma = 41;

-- DISCIPLINAS EM CADA DIA DA SEMANA PARA DETERMINADA TURMA
	-- DETALHADO
select t.ano, t.serie, t.data_ano, cr.dia_semana, cr.disciplina
    from Cronograma cr inner join Turmas t ON cr.id_turma = t.id
    where t.id = 40;
select t.ano, t.serie, t.data_ano, cr.dia_semana, cr.disciplina
    from Cronograma cr inner join Turmas t ON cr.id_turma = t.id
    where t.id = 41;
	-- SIMPLIFICADO
select dia_semana, disciplina from Cronograma where id_turma = 40;
select dia_semana, disciplina from Cronograma where id_turma = 41;

-- TODAS TURMAS QUE UM DADO PROFESSOR MINISTRA AULA
	-- DETALHADO
select distinct us.nome, us.rs_ra, t.ano, t.serie, t.data_ano
    from Cronograma cr inner join Usuarios us ON cr.rs_prof = us.rs_ra
    inner join Turmas t ON t.id = cr.id_turma
    where us.rs_ra = 2020569887;
select distinct us.nome, us.rs_ra, t.ano, t.serie, t.data_ano
    from Cronograma cr inner join Usuarios us ON cr.rs_prof = us.rs_ra
    inner join Turmas t ON t.id = cr.id_turma
    where us.rs_ra = 2222204888;
select distinct us.nome, us.rs_ra, t.ano, t.serie, t.data_ano
    from Cronograma cr inner join Usuarios us ON cr.rs_prof = us.rs_ra
    inner join Turmas t ON t.id = cr.id_turma
    where us.rs_ra = 2222204885;
	-- SIMPLIFICADO
select distinct us.nome, us.rs_ra, cr.id_turma, cr.dia_semana
    from Cronograma cr inner join Usuarios us ON cr.rs_prof = us.rs_ra
    where us.rs_ra = 2020569887;
select distinct us.nome, us.rs_ra, cr.id_turma, cr.dia_semana
    from Cronograma cr inner join Usuarios us ON cr.rs_prof = us.rs_ra
    where us.rs_ra = 2222204888;
select distinct us.nome, us.rs_ra, cr.id_turma, cr.dia_semana
    from Cronograma cr inner join Usuarios us ON cr.rs_prof = us.rs_ra
    where us.rs_ra = 2222204885;

-- 2: LOGIN
select rs_ra, cargo from Usuarios where rs_ra = 2222204880 and senha = 'abcd1234';

-- 3: CONTATOS
insert into Contatos values (1, 'davicosta@gmail.com', '(11) 98888-8888', 'Matrícula', to_date('22/09/2023', 'DD/MM/YYYY'));
insert into Contatos (id, email, mensagem, dia) values (2, 'lucy22@gmail.com', 'Documentação', to_date('17/12/2023', 'DD/MM/YYYY'));
insert into Contatos (id, telefone, mensagem, dia) values (3, '(11) 99876-5432', 'Documentação', to_date('21/11/2023', 'DD/MM/YYYY'));

-- 4: RECUPERAR SENHA
select email, telefone from Usuarios where email = 'geovanna.lascouse@cjs.edu.br' or telefone = '(11) 99999-9998';

-- 5: NOVA SENHA
	-- DEMONSTRAÇÃO DE EMAIL OU POR TELEFONE (SÃO ÚNICOS ENTÃO SERVEM COMO FILTRO)
update Usuarios set senha = 'novasenha' where email = 'geovanna.lascouse@cjs.edu.br';
update Usuarios set senha = 'novasenha' where telefone = '(11) 99999-9998';
    
-- 6: ALUNO BOLETIM
select b.disciplina, b.bimestre, b.av1, b.av2, b.media, b.faltas, b.situacao, b.limite_faltas, t.ano, t.serie, t.data_ano
	from Boletim b inner join Usuarios us ON us.rs_ra = b.ra
    inner join Turmas t ON t.id = b.id_turma
	where (us.rs_ra = 2222204890 or us.nome = 'Eric Castro') and t.data_ano = 2023 and b.bimestre = 4
    
	-- CONSULTAR ANO
select distinct t.data_ano from Turmas t inner join Boletim b ON t.id = b.id_turma
    inner join Usuarios us ON us.rs_ra = b.ra
    where us.rs_ra = 2222204890;
	-- CONSULTAR BIMESTRE
select distinct b.bimestre from Turmas t inner join Boletim b ON t.id = b.id_turma
    inner join Usuarios us ON us.rs_ra = b.ra
    where us.rs_ra = 2222204890;
	-- VER TURMA
select distinct t.ano, t.serie from Turmas t inner join Boletim b ON t.id = b.id_turma
    inner join Usuarios us ON us.rs_ra = b.ra
    where us.rs_ra = 2222204890;

-- 7: ALUNO CRONOGRAMA
select cr.disciplina, cr.dia_semana from Cronograma cr
    where cr.id_turma IN (select b.id_turma from Usuarios us
    inner join Boletim b ON b.ra = us.rs_ra
    inner join Turmas t ON t.id = b.id_turma
    where us.rs_ra = 2222204890 and t.data_ano = 2023) order by dia_semana, ordem;
	-- SUBQUERY: VER DE QUAL TURMA UM DETERMINADO ALUNO É
    select us.rs_ra, us.nome, t.id from Usuarios us
        inner join Boletim b ON b.ra = us.rs_ra
        inner join Turmas t ON t.id = b.id_turma
        where us.rs_ra = 2222204890 and t.data_ano = 2023;
	-- DISCIPLINA - FALTAS
    select b.disciplina, b.faltas, b.bimestre, t.data_ano, t.ano, t.serie
        from Usuarios us inner join Boletim b ON b.ra = us.rs_ra
        inner join Turmas t ON b.id_turma = t.id
        where us.rs_ra = 2222204890;

-- 9: PROFESSOR CRONOGRAMA
select cr.dia_semana, t.ano, t.serie
    from Cronograma cr inner join Usuarios us ON cr.rs_prof = us.rs_ra
    inner join Turmas t ON cr.id_turma = t.id
    where us.rs_ra = 2020569887 and t.data_ano = 2023 ORDER BY t.turno, cr.dia_semana, cr.ordem;

-- 10: PROFESSOR BOLETIM
select b.bimestre, b.disciplina, b.av1, b.av2, b.media, b.faltas, b.situacao, b.limite_faltas, t.ano, t.serie, t.data_ano, us.nome, us.rs_ra
	from Boletim b inner join Usuarios us ON us.rs_ra = b.ra
    inner join Turmas t ON t.id = b.id_turma
	where (us.rs_ra = 2222204880 or us.nome = 'Geovanna Vieira') and t.data_ano = 2022 and t.ano = '4º' and t.serie = 'A' and b.bimestre = 1;

-- 11: ADD/ATUALIZAR NOTA
	-- FILTRAR TURMA
	select ano, serie from Turmas where id = 41;
	-- FILTRAR BIMESTRE
	select distinct bimestre from Boletim;
	-- FILTRAR DISCIPLINA DA TURMA
	select disciplina from Boletim where id_turma = 41;
	-- FILTRAR ALGUM ALUNO DA TURMA
    select distinct us.rs_ra, us.nome from Usuarios us
        inner join Boletim b ON b.ra = us.rs_ra
        inner join Turmas t ON t.id = b.id_turma
        where (us.rs_ra = 2222204890 or nome = 'Eric Castro') and t.data_ano = 2023 and t.id = 41;
	-- ADICIONAR
	insert into Boletim (id, ra, disciplina, bimestre, av1, id_turma) values (7, 2222204890, 'Matemática', 4, 7.7, 41);
	-- EDITAR
	update Boletim set av1 = 8.7 where id_turma = 41 and bimestre = 4 and disciplina = 'Matemática' and ra = 2222204890;
    	-- VISUALIZAR APENAS
    	select * from Boletim;



-- 13: CENTRAL
select rs_ra, cargo, nome, email, telefone from Usuarios order by rs_ra desc fetch first 3 rows only;

-- 14A: FUNCIONÁRIO CRONOGRAMA (VISTA DO CRONOGRAMA DO PROFESSOR)
	-- FILTRAR ANO
	select distinct data_ano from Turmas order by data_ano desc;
	-- FILTRAR PROFESSOR
	select nome, rs_ra from Usuarios where cargo = 'Professor' or cargo = 'Professora';
	-- VISUALIZAÇÃO GERAL CRONOGRAMA PROFESSOR
    select t.data_ano, us.rs_ra, us.nome, cr.dia_semana, t.ano, t.serie
        from Cronograma cr inner join Usuarios us ON cr.rs_prof = us.rs_ra
        inner join Turmas t ON cr.id_turma = t.id
        where (us.rs_ra = 2222204885 or us.nome = 'Marina') and (us.cargo = 'Professor' or us.cargo = 'Professora') and t.data_ano = 2023 
        order by cr.dia_semana, cr.ordem;

--14B: FUNCIONÁRIO CRONOGRAMA (VISTA DO CRONOGRAMA DO ALUNO)
	-- FILTRAR ANO
	select distinct data_ano from Turmas order by data_ano desc;
	-- FILTRAR TURMA
	select ano, serie, data_ano from Turmas;
	-- VISUALIZAÇÃO GERAL CRONOGRAMA DO ALUNO || BUSCA POR RA
	select cr.disciplina, cr.dia_semana from Cronograma cr
    	where cr.id_turma IN (select b.id_turma from Usuarios us
    	inner join Boletim b ON b.ra = us.rs_ra
    	inner join Turmas t ON t.id = b.id_turma
    	where us.rs_ra = 2222204890 and t.data_ano = 2023) order by cr.dia_semana, cr.ordem;

-- 15: FUNCIONÁRIO BOLETIM
	-- FILTRAR ANO
	select distinct data_ano from Turmas order by data_ano desc;
	-- FILTRAR TURMA
	select ano, serie, data_ano from Turmas;
	-- FILTRAR ALUNO
	select nome, rs_ra from Usuarios where cargo = 'Aluno' or cargo = 'Aluna';
	-- FILTRAR BIMESTRE
	select distinct bimestre from Boletim;
	-- VISUALIZAÇÃO GERAL BOLETIM DO ALUNO || BUSCA POR RA
	select us.nome, us.rs_ra, b.bimestre, b.disciplina, b.av1, b.av2, b.media, b.faltas, b.situacao, b.limite_faltas, t.ano, t.serie, t.data_ano
		from Boletim b inner join Usuarios us ON us.rs_ra = b.ra
    	inner join Turmas t ON t.id = b.id_turma
		where (us.rs_ra = 2222204880 or us.nome = 'Geovanna Vieira') and t.data_ano = 2023 and t.ano = '7º' and t.serie = 'C' and b.bimestre = 2;

-- 16: USUÁRIOS
select rs_ra, nome, cargo, email, telefone from Usuarios;
	-- EXCLUSÃO DE UM USUÁRIO
	delete from Usuarios where rs_ra = 2222204885;
		-- VISUALIZAÇÃO QUE COMPROVA O SUCESSO DO DELETE CASCADE 
		select * from Cronograma where rs_prof = 2222204885;
		select * from Usuarios where rs_ra = 2222204885;

-- 17: CADASTRAR/EDITAR USUÁRIOS
	-- CRIANDO
	insert into Usuarios (RS_RA, cargo, nome, email, telefone) 
    values (2222204817, 'Aluno', 'Lucas Oliveira', 'lucas.oli@cjs.edu.br', '(11) 99999-1010');
	-- EDITANDO
		-- INFOS DO USUÁRIO A SER ALTERADO
		select nome, cargo, email, telefone from Usuarios where rs_ra = 2222204889;
		-- ALTERAÇÃO
		update Usuarios set telefone = '(11) 99999-5454' where rs_ra = 2222204889;


--------------- OCORRÊNCIAS ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Criando uma ocorrência
insert into Ocorrencias (id) values (100);
update Ocorrencias set observacoes = 'Quebrou nariz do colega', data_ocor = to_date('31/08/2023', 'DD/MM/YYYY') where id = 100;

-- 2: Associando alunos a uma ocorrência
insert into Ocorrencias_Alunos values (100, 2222204890);
insert into Ocorrencias_Alunos values (100, 2222204891);

----- EDIÇÃO DOS DADOS -----

-- 1: Atualizando uma ocorrência
update Ocorrencias set observacoes = 'Briga em sala', data_ocor = to_date('26/08/2023', 'DD/MM/YYYY') where id = 100;

-- 2: Removendo um aluno de uma ocorrência
delete from Ocorrencias_Alunos where id_ocor = 100 and ra = 2222204891;

-- 3: Excluindo uma ocorrência
delete from Ocorrencias where id = 100;

----- SELEÇÃO DOS DADOS -----

-- 1: Consultando todas as ocorrências
select * from Ocorrencias;

-- 2: Consultando as ocorrências de um aluno.
select oc.observacoes, oc.data_ocor from Ocorrencias oc
    inner join Ocorrencias_Alunos oa ON oa.id_ocor = oc.id
    where oa.ra = 2222204890;

-- 3: Consultando os alunos envolvidos de uma ocorrência
-- 3.1: Exibindo apenas o nome e RA dos alunos
select us.nome "Envolvidos", us.rs_ra "RA dos envolvidos" 
    from Ocorrencias ocor inner join Ocorrencias_Alunos ocorAlu ON ocor.id = ocorAlu.id_ocor
    inner join Usuarios us ON ocorAlu.ra = us.rs_ra
    where ocor.id = 100 order by ocor.id asc;
-- 3.2: Exibindo mais detalhes
select distinct ocor.id, us.rs_ra "RA dos envolvidos", us.nome "Envolvidos", t.ano, t.serie
    from Ocorrencias ocor inner join Ocorrencias_Alunos oa ON ocor.id = oa.id_ocor
    inner join Usuarios us ON oa.ra = us.rs_ra
    inner join Boletim b ON b.ra = us.rs_ra
    inner join Turmas t ON t.id = b.id_turma
    where ocor.id = 100 and (us.rs_ra = 2222204890 and t.data_ano = 2023) order by ocor.id asc;	