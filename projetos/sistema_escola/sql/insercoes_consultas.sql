--------------- USUÁRIOS ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Cadastrando um usuário
-- 1.1: Aluno
insert into Usuarios values (2222204880, 'Aluno', 'abcd1234', 'Geovanna Vieira', 'geovanna.lascouse@cjs.edu.br', '(11) 99999-9998');
insert into Usuarios values (2222204890, 'Aluno', 'abcd1234', 'Eric Castro', 'eric.castro@cjs.edu.br', '(11) 99999-1006');
insert into Usuarios values (2222204891, 'Aluno', 'abcd1234', 'Rodrigo Mendes', 'rodrigo039@cjs.edu.br', '(11) 99999-1007');
-- 1.2: Funcionário
insert into Usuarios values (2020569887, 'Professora', 'abc1234', 'Jorgina', 'jorgina.santos@cjs.edu.br', '(11) 99999-1000');
insert into Usuarios values (2222204885, 'Professora', 'abc1234', 'Marina', 'mari@cjs.edu.br', '(11) 99999-9999');
insert into Usuarios values (2222204888, 'Professora', 'abc1234', 'Márcia', 'marcinha@cjs.edu.br', '(11) 99999-1001');
insert into Usuarios values (2222204889, 'Professor', 'abc1234', 'Robson', 'rob@cjs.edu.br', '(11) 99999-1002');
insert into Usuarios values (2222204886, 'Professora', 'abc1234', 'Linda', 'linda@cjs.edu.br', '(11) 99999-1003');
insert into Usuarios values (2222204884, 'Professor', 'abc1234', 'Cleber', 'cleb@cjs.edu.br', '(11) 99999-1004');
insert into Usuarios values (5555555555, 'Auxiliar Adm', 'xxxyyy', 'Chico Bento', 'chico1000@cjs.edu.br', '(11) 99999-1008');
insert into Usuarios values (9999999999, 'Diretor', 'xxxyyy', 'Eduardo Costa', 'eduardo.costa@cjs.edu.br', '(11) 99999-1009');

----- ALTERAÇÃO DOS DADOS -----

-- 1: Atualizando as informações pessoais de um usuário
update Usuarios set telefone = '(11) 99999-5454' where rs_ra = 2222204889;

-- 2: Alterando a senha de um usuário
update Usuarios set senha = 'novasenha' where email = 'geovanna.lascouse@cjs.edu.br';

-- 3: Excluindo um usuário
delete from Usuarios where rs_ra = 2222204885;

----- CONSULTA DOS DADOS -----

-- 1: Exibindo os dados de todos os usuários
select * from Usuarios;

-- 2: Exibindo os dados de todos os usuários de um determinado cargo
select * from Usuarios where cargo = 'Aluno';

-- 3: Exibindo os dados de um determinado usuário
select * from Usuarios where rs_ra = 2222204889;

--------------- TURMAS ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Associando professores à uma turma, com sua disciplina, dia da semana e ordem da aula
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

----- CONSULTA DOS DADOS -----

-- 1: Exibindo todos os professores de uma determinada turma
-- 1.1: Consulta detalhada
select distinct us.nome "Professor(a)", t.ano, t.serie, t.data_ano
    from Usuarios us inner join Cronograma cr ON us.rs_ra = cr.rs_prof
    inner join Turmas t ON cr.id_turma = t.id
    where t.id = 40 order by us.nome asc;
select distinct us.nome "Professor(a)", t.ano, t.serie, t.data_ano
    from Usuarios us inner join Cronograma cr ON us.rs_ra = cr.rs_prof
    inner join Turmas t ON cr.id_turma = t.id
    where t.id = 41 order by us.nome asc;
-- 1.2: Consulta simples
select distinct us.nome "Professor(a)", cr.id_turma "Turma"
	from Usuarios us inner join Cronograma cr ON us.rs_ra = cr.rs_prof
    where cr.id_turma = 40 order by us.nome asc;
select distinct us.nome "Professor(a)", cr.id_turma "Turma"
	from Usuarios us inner join Cronograma cr ON us.rs_ra = cr.rs_prof
    where cr.id_turma = 41 order by us.nome asc;

-- 2: Exibindo todas as disciplinas de uma determinada turma
-- 2.1: Consulta detalhada
select distinct cr.disciplina, t.ano, t.serie, t.data_ano
    from Cronograma cr inner join Turmas t ON cr.id_turma = t.id
    where t.id = 40;
select distinct cr.disciplina, t.ano, t.serie, t.data_ano
    from Cronograma cr inner join Turmas t ON cr.id_turma = t.id
    where t.id = 41;
-- 2.2: Consulta simples
select distinct disciplina from Cronograma where id_turma = 40;
select distinct disciplina from Cronograma where id_turma = 41;

-- 3: Exibindo as disciplinas para cada dia da semana de uma determinada turma
-- 3.1: Consulta detalhada
select t.ano, t.serie, t.data_ano, cr.dia_semana, cr.disciplina
    from Cronograma cr inner join Turmas t ON cr.id_turma = t.id
    where t.id = 40;
select t.ano, t.serie, t.data_ano, cr.dia_semana, cr.disciplina
    from Cronograma cr inner join Turmas t ON cr.id_turma = t.id
    where t.id = 41;
-- 3.2: Consulta simples
select dia_semana, disciplina from Cronograma where id_turma = 40;
select dia_semana, disciplina from Cronograma where id_turma = 41;

-- 4: Exibindo todas as turmas que um determinado professor ministra aula
-- 4.1: Consulta detalhada
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
-- 4.2: Consulta simples
select distinct us.nome, us.rs_ra, cr.id_turma, cr.dia_semana
    from Cronograma cr inner join Usuarios us ON cr.rs_prof = us.rs_ra
    where us.rs_ra = 2020569887;
select distinct us.nome, us.rs_ra, cr.id_turma, cr.dia_semana
    from Cronograma cr inner join Usuarios us ON cr.rs_prof = us.rs_ra
    where us.rs_ra = 2222204888;
select distinct us.nome, us.rs_ra, cr.id_turma, cr.dia_semana
    from Cronograma cr inner join Usuarios us ON cr.rs_prof = us.rs_ra
    where us.rs_ra = 2222204885;

-- 5: Exibindo a turma de um determinado aluno
select us.rs_ra, us.nome, t.id from Usuarios us
    inner join Boletim b ON b.ra = us.rs_ra
    inner join Turmas t ON t.id = b.id_turma
    where us.rs_ra = 2222204890 and t.data_ano = 2023;
select distinct us.rs_ra, us.nome from Usuarios us
    inner join Boletim b ON b.ra = us.rs_ra
    inner join Turmas t ON t.id = b.id_turma
    where (us.rs_ra = 2222204890 or nome = 'Eric Castro') and t.data_ano = 2023 and t.id = 41;

-- 6: Exibindo o cronograma de um determinado aluno
select cr.disciplina, cr.dia_semana from Cronograma cr
    where cr.id_turma IN (select b.id_turma from Usuarios us
    inner join Boletim b ON b.ra = us.rs_ra
    inner join Turmas t ON t.id = b.id_turma
    where us.rs_ra = 2222204890 and t.data_ano = 2023) order by dia_semana, ordem;

-- 7: Exibindo o cronograma de um determinado professor
-- 7.1: Consulta detalhada
select t.data_ano, us.rs_ra, us.nome, cr.dia_semana, t.ano, t.serie
    from Cronograma cr inner join Usuarios us ON cr.rs_prof = us.rs_ra
    inner join Turmas t ON cr.id_turma = t.id
    where (us.rs_ra = 2222204885 or us.nome = 'Marina') and (us.cargo = 'Professor' or us.cargo = 'Professora') and t.data_ano = 2023 
    order by cr.dia_semana, cr.ordem;
-- 7.1: Consulta simples
select cr.dia_semana, t.ano, t.serie
    from Cronograma cr inner join Usuarios us ON cr.rs_prof = us.rs_ra
    inner join Turmas t ON cr.id_turma = t.id
    where us.rs_ra = 2020569887 and t.data_ano = 2023 ORDER BY t.turno, cr.dia_semana, cr.ordem;

--------------- BOLETIM ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Criando o boletim de um aluno
-- 1.1: Boletim completo
insert into Boletim values (1, 2222204880, 'Português', 2, 10, 9, 9.5, 3, 15, 'Aprovado', 40);
insert into Boletim values (2, 2222204880, 'Matemática', 2, 8, 7, 7.5, 0, 15, 'Aprovado', 40);
insert into Boletim values (3, 2222204880, 'Matemática', 1, 9, 8.5, 7.5, 0, 15, 'Aprovado', 38);
insert into Boletim values (4, 2222204890, 'Geografia', 3, 6.5, 8.2, 7.35, 1, 10, 'Aprovado', 41);
insert into Boletim values (5, 2222204890, 'História', 4, 7, 10, 8.5, 2, 10, 'Aprovado', 41);
insert into Boletim values (6, 2222204890, 'Português', 4, 8, 10, 9, 4, 15,	'Aprovado', 41);
-- 1.2: Boletim inicial
insert into Boletim (id, ra, disciplina, bimestre, av1, limite_faltas, id_turma) values (7, 2222204890, 'Matemática', 4, 15, 41);

----- ALTERAÇÃO DOS DADOS -----

-- Atualizando as notas de um aluno
update Boletim set av1 = 8.7, av2 = 9.3 where id_turma = 41 and bimestre = 4 and disciplina = 'Matemática' and ra = 2222204890;

-- Atualizando as faltas de um aluno
update Boletim set faltas = 5 where id_turma = 41 and bimestre = 4 and disciplina = 'Matemática' and ra = 2222204890;

-- Atualizando a média de um aluno
update Boletim set media = 9 where id_turma = 41 and bimestre = 4 and disciplina = 'Matemática' and ra = 2222204890;

-- Atualizando a situação de um aluno
update Boletim set situacao = 'Aprovado' where id_turma = 41 and bimestre = 4 and disciplina = 'Matemática' and ra = 2222204890;

----- CONSULTA DOS DADOS -----

-- 1: Consultando o boletim de um determinado aluno
select us.nome, us.rs_ra, b.bimestre, b.disciplina, b.av1, b.av2, b.media, b.faltas, b.situacao, b.limite_faltas, t.ano, t.serie, t.data_ano
    from Boletim b inner join Usuarios us ON us.rs_ra = b.ra
    inner join Turmas t ON t.id = b.id_turma
    where (us.rs_ra = 2222204880 or us.nome = 'Geovanna Vieira') and t.data_ano = 2023 and t.ano = '7º' and t.serie = 'C' and b.bimestre = 2;
select b.bimestre, b.disciplina, b.av1, b.av2, b.media, b.faltas, b.situacao, b.limite_faltas, t.ano, t.serie, t.data_ano, us.nome, us.rs_ra
	from Boletim b inner join Usuarios us ON us.rs_ra = b.ra
    inner join Turmas t ON t.id = b.id_turma
	where (us.rs_ra = 2222204880 or us.nome = 'Geovanna Vieira') and t.data_ano = 2022 and t.ano = '4º' and t.serie = 'A' and b.bimestre = 1;
select b.disciplina, b.bimestre, b.av1, b.av2, b.media, b.faltas, b.situacao, b.limite_faltas, t.ano, t.serie, t.data_ano
	from Boletim b inner join Usuarios us ON us.rs_ra = b.ra
    inner join Turmas t ON t.id = b.id_turma
	where (us.rs_ra = 2222204890 or us.nome = 'Eric Castro') and t.data_ano = 2023 and b.bimestre = 4

--------------- OCORRÊNCIAS ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Criando uma ocorrência
insert into Ocorrencias values (100, 'Quebrou nariz do colega', to_date('31/08/2023', 'DD/MM/YYYY'));
insert into Ocorrencias values (101, 'Passou mal', to_date('22/10/2023', 'DD/MM/YYYY'));
insert into Ocorrencias values (102, 'Riscou a mesa', to_date('12/09/2023', 'DD/MM/YYYY'));

-- 2: Associando alunos à uma ocorrência
insert into Ocorrencias_Alunos values (100, 2222204890);
insert into Ocorrencias_Alunos values (100, 2222204891);
insert into Ocorrencias_Alunos values (101, 2222204880);
insert into Ocorrencias_Alunos values (102, 2222204890);

----- ALTERAÇÃO DOS DADOS -----

-- 1: Atualizando uma ocorrência
update Ocorrencias set observacoes = 'Briga em sala', data_ocor = to_date('26/08/2023', 'DD/MM/YYYY') where id = 100;

-- 2: Removendo um aluno de uma ocorrência
delete from Ocorrencias_Alunos where id_ocor = 100 and ra = 2222204891;

-- 3: Excluindo uma ocorrência
delete from Ocorrencias where id = 100;

----- CONSULTA DOS DADOS -----

-- 1: Consultando todas as ocorrências
select * from Ocorrencias;

-- 2: Consultando todas as ocorrências de um determinado aluno.
select oc.observacoes, oc.data_ocor from Ocorrencias oc
    inner join Ocorrencias_Alunos oa ON oa.id_ocor = oc.id
    where oa.ra = 2222204890;

-- 3: Consultando todos os alunos envolvidos em uma determinada ocorrência
-- 3.1: Consulta simples
select us.nome "Envolvidos", us.rs_ra "RA dos envolvidos" 
    from Ocorrencias ocor inner join Ocorrencias_Alunos ocorAlu ON ocor.id = ocorAlu.id_ocor
    inner join Usuarios us ON ocorAlu.ra = us.rs_ra
    where ocor.id = 100 order by ocor.id asc;
-- 3.2: Consulta detalhada
select distinct ocor.id, us.rs_ra "RA dos envolvidos", us.nome "Envolvidos", t.ano, t.serie
    from Ocorrencias ocor inner join Ocorrencias_Alunos oa ON ocor.id = oa.id_ocor
    inner join Usuarios us ON oa.ra = us.rs_ra
    inner join Boletim b ON b.ra = us.rs_ra
    inner join Turmas t ON t.id = b.id_turma
    where ocor.id = 100 and (us.rs_ra = 2222204890 and t.data_ano = 2023) order by ocor.id asc;	

--------------- CONTATO ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Realizando um contato
insert into Contatos values (1, 'davicosta@gmail.com', '(11) 98888-8888', 'Matrícula', to_date('22/09/2023', 'DD/MM/YYYY'));
insert into Contatos (id, email, mensagem, dia) values (2, 'lucy22@gmail.com', 'Documentação', to_date('17/12/2023', 'DD/MM/YYYY'));
insert into Contatos (id, telefone, mensagem, dia) values (3, '(11) 99876-5432', 'Documentação', to_date('21/11/2023', 'DD/MM/YYYY'));

----- CONSULTA DOS DADOS -----

-- 1: Consultando todos os contatos
select * from Contatos;