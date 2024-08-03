--------------- USUÁRIOS ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Cadastrando um usuário
-- 1.1: Aluno
INSERT INTO Usuarios VALUES (2222204880, 'Aluno', 'abcd1234', 'Geovanna Vieira', 'geovanna.lascouse@cjs.edu.br', '(11) 99999-9998');
INSERT INTO Usuarios VALUES (2222204890, 'Aluno', 'abcd1234', 'Eric Castro', 'eric.castro@cjs.edu.br', '(11) 99999-1006');
INSERT INTO Usuarios VALUES (2222204891, 'Aluno', 'abcd1234', 'Rodrigo Mendes', 'rodrigo039@cjs.edu.br', '(11) 99999-1007');
-- 1.2: Funcionário
INSERT INTO Usuarios VALUES (2020569887, 'Professora', 'abc1234', 'Jorgina', 'jorgina.santos@cjs.edu.br', '(11) 99999-1000');
INSERT INTO Usuarios VALUES (2222204885, 'Professora', 'abc1234', 'Marina', 'mari@cjs.edu.br', '(11) 99999-9999');
INSERT INTO Usuarios VALUES (2222204888, 'Professora', 'abc1234', 'Márcia', 'marcinha@cjs.edu.br', '(11) 99999-1001');
INSERT INTO Usuarios VALUES (2222204889, 'Professor', 'abc1234', 'Robson', 'rob@cjs.edu.br', '(11) 99999-1002');
INSERT INTO Usuarios VALUES (2222204886, 'Professora', 'abc1234', 'Linda', 'linda@cjs.edu.br', '(11) 99999-1003');
INSERT INTO Usuarios VALUES (2222204884, 'Professor', 'abc1234', 'Cleber', 'cleb@cjs.edu.br', '(11) 99999-1004');
INSERT INTO Usuarios VALUES (5555555555, 'Auxiliar Adm', 'xxxyyy', 'Chico Bento', 'chico1000@cjs.edu.br', '(11) 99999-1008');
INSERT INTO Usuarios VALUES (9999999999, 'Diretor', 'xxxyyy', 'Eduardo Costa', 'eduardo.costa@cjs.edu.br', '(11) 99999-1009');

----- ALTERAÇÃO DOS DADOS -----

-- 1: Atualizando as informações pessoais de um usuário
UPDATE Usuarios SET telefone = '(11) 99999-5454' WHERE rs_ra = 2222204889;

-- 2: Alterando a senha de um usuário
UPDATE Usuarios SET senha = 'novasenha' WHERE email = 'geovanna.lascouse@cjs.edu.br';

-- 3: Excluindo um usuário
DELETE FROM Usuarios WHERE rs_ra = 2222204885;

----- CONSULTA DOS DADOS -----

-- 1: Exibindo os dados de todos os usuários
SELECT * FROM Usuarios;

-- 2: Exibindo os dados de todos os usuários de um determinado cargo
SELECT * FROM Usuarios WHERE cargo = 'Aluno';

-- 3: Exibindo os dados de um determinado usuário
SELECT * FROM Usuarios WHERE rs_ra = 2222204889;

--------------- TURMAS ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Associando professores à uma turma, com sua disciplina, dia da semana e ordem da aula
INSERT INTO Cronograma VALUES (1, 2020569887, 'Português', 40, 'Segunda', 1);
INSERT INTO Cronograma VALUES (2, 2020569887, 'Inglês', 40, 'Segunda', 2);
INSERT INTO Cronograma VALUES (3, 2222204888, 'Matemática', 40, 'Segunda', 3);
INSERT INTO Cronograma VALUES (4, 2222204888, 'Matemática', 40, 'Quinta', 1);
INSERT INTO Cronograma VALUES (5, 2222204889, 'Geografia', 40, 'Segunda', 4);
INSERT INTO Cronograma VALUES (6, 2222204885, 'Filosofia', 40, 'Terça', 1);
INSERT INTO Cronograma VALUES (7, 2222204885, 'Filosofia', 40, 'Terça', 2);
INSERT INTO Cronograma VALUES (8, 2222204885, 'História', 40, 'Terça', 3);
INSERT INTO Cronograma VALUES (9, 2020569887, 'Inglês', 41, 'Segunda', 1);
INSERT INTO Cronograma VALUES (10, 2222204884, 'História', 41, 'Segunda', 2);
INSERT INTO Cronograma VALUES (11, 2222204884, 'Geografia', 41, 'Segunda', 3);
INSERT INTO Cronograma VALUES (12, 2222204885, 'Português', 41, 'Segunda', 4);
INSERT INTO Cronograma VALUES (13, 2222204885, 'Filosofia', 41, 'Segunda', 5);
INSERT INTO Cronograma VALUES (14, 2222204886, 'Matemática', 41, 'Terça', 1);
INSERT INTO Cronograma VALUES (15, 2020569887, 'Português', 39, 'Segunda', 1);
INSERT INTO Cronograma VALUES (16, 2020569887, 'Português', 39, 'Segunda', 2);
INSERT INTO Cronograma VALUES (17, 2020569887, 'Português', 42, 'Segunda', 1);
INSERT INTO Cronograma VALUES (18, 2020569887, 'Inglês', 42, 'Quarta', 1);
INSERT INTO Cronograma VALUES (19, 2222204888, 'Matemática', 42, 'Segunda', 2);
INSERT INTO Cronograma VALUES (20, 2222204888, 'Matemática', 42, 'Quinta', 1);
INSERT INTO Cronograma VALUES (21, 2020569887, 'Inglês', 39, 'Terça', 1);
INSERT INTO Cronograma VALUES (22, 2222204885, 'Português', 41, 'Terça', 2);
INSERT INTO Cronograma VALUES (23, 2222204885, 'Português', 41, 'Terça', 3);
INSERT INTO Cronograma VALUES (24, 2222204884, 'Geografia', 39, 'Quarta', 1);
INSERT INTO Cronograma VALUES (25, 2222204885, 'História', 39, 'Sexta', 1);
INSERT INTO Cronograma VALUES (26, 2222204889, 'Geografia', 40, 'Quinta', 2);
INSERT INTO Cronograma VALUES (27, 2222204889, 'Geografia', 40, 'Sexta', 1);
INSERT INTO Cronograma VALUES (28, 2222204889, 'Geografia', 42, 'Segunda', 3);
INSERT INTO Cronograma VALUES (29, 2222204889, 'Geografia', 42, 'Segunda', 4);
INSERT INTO Cronograma VALUES (30, 2222204889, 'Geografia', 42, 'Quarta', 2);
INSERT INTO Cronograma VALUES (31, 2222204885, 'Filosofia', 42, 'Sexta', 1);
INSERT INTO Cronograma VALUES (32, 2222204884, 'História', 42, 'Quinta', 2);
INSERT INTO Cronograma VALUES (33, 2222204888, 'Matemática', 39, 'Quinta', 1);
INSERT INTO Cronograma VALUES (34, 2222204888, 'Matemática', 39, 'Quinta', 2);
INSERT INTO Cronograma VALUES (35, 2222204888, 'Matemática', 39, 'Terça', 2);
INSERT INTO Cronograma VALUES (36, 2222204888, 'Matemática', 39, 'Segunda', 3);

----- CONSULTA DOS DADOS -----

-- 1: Exibindo todos os professores de uma determinada turma
-- 1.1: Consulta detalhada
SELECT distinct us.nome "Professor(a)", t.ano, t.serie, t.data_ano
    FROM Usuarios us INNER JOIN Cronograma cr ON us.rs_ra = cr.rs_prof
    INNER JOIN Turmas t ON cr.id_turma = t.id
    WHERE t.id = 40 ORDER BY us.nome ASC;
SELECT distinct us.nome "Professor(a)", t.ano, t.serie, t.data_ano
    FROM Usuarios us INNER JOIN Cronograma cr ON us.rs_ra = cr.rs_prof
    INNER JOIN Turmas t ON cr.id_turma = t.id
    WHERE t.id = 41 ORDER BY us.nome ASC;
-- 1.2: Consulta simples
SELECT distinct us.nome "Professor(a)", cr.id_turma "Turma"
	FROM Usuarios us INNER JOIN Cronograma cr ON us.rs_ra = cr.rs_prof
    WHERE cr.id_turma = 40 ORDER BY us.nome ASC;
SELECT distinct us.nome "Professor(a)", cr.id_turma "Turma"
	FROM Usuarios us INNER JOIN Cronograma cr ON us.rs_ra = cr.rs_prof
    WHERE cr.id_turma = 41 ORDER BY us.nome ASC;

-- 2: Exibindo todas as disciplinas de uma determinada turma
-- 2.1: Consulta detalhada
SELECT distinct cr.disciplina, t.ano, t.serie, t.data_ano
    FROM Cronograma cr INNER JOIN Turmas t ON cr.id_turma = t.id
    WHERE t.id = 40;
SELECT distinct cr.disciplina, t.ano, t.serie, t.data_ano
    FROM Cronograma cr INNER JOIN Turmas t ON cr.id_turma = t.id
    WHERE t.id = 41;
-- 2.2: Consulta simples
SELECT distinct disciplina FROM Cronograma WHERE id_turma = 40;
SELECT distinct disciplina FROM Cronograma WHERE id_turma = 41;

-- 3: Exibindo as disciplinas para cada dia da semana de uma determinada turma
-- 3.1: Consulta detalhada
SELECT t.ano, t.serie, t.data_ano, cr.dia_semana, cr.disciplina
    FROM Cronograma cr INNER JOIN Turmas t ON cr.id_turma = t.id
    WHERE t.id = 40;
SELECT t.ano, t.serie, t.data_ano, cr.dia_semana, cr.disciplina
    FROM Cronograma cr INNER JOIN Turmas t ON cr.id_turma = t.id
    WHERE t.id = 41;
-- 3.2: Consulta simples
SELECT dia_semana, disciplina FROM Cronograma WHERE id_turma = 40;
SELECT dia_semana, disciplina FROM Cronograma WHERE id_turma = 41;

-- 4: Exibindo todas as turmas que um determinado professor ministra aula
-- 4.1: Consulta detalhada
SELECT distinct us.nome, us.rs_ra, t.ano, t.serie, t.data_ano
    FROM Cronograma cr INNER JOIN Usuarios us ON cr.rs_prof = us.rs_ra
    INNER JOIN Turmas t ON t.id = cr.id_turma
    WHERE us.rs_ra = 2020569887;
SELECT distinct us.nome, us.rs_ra, t.ano, t.serie, t.data_ano
    FROM Cronograma cr INNER JOIN Usuarios us ON cr.rs_prof = us.rs_ra
    INNER JOIN Turmas t ON t.id = cr.id_turma
    WHERE us.rs_ra = 2222204888;
SELECT distinct us.nome, us.rs_ra, t.ano, t.serie, t.data_ano
    FROM Cronograma cr INNER JOIN Usuarios us ON cr.rs_prof = us.rs_ra
    INNER JOIN Turmas t ON t.id = cr.id_turma
    WHERE us.rs_ra = 2222204885;
-- 4.2: Consulta simples
SELECT distinct us.nome, us.rs_ra, cr.id_turma, cr.dia_semana
    FROM Cronograma cr INNER JOIN Usuarios us ON cr.rs_prof = us.rs_ra
    WHERE us.rs_ra = 2020569887;
SELECT distinct us.nome, us.rs_ra, cr.id_turma, cr.dia_semana
    FROM Cronograma cr INNER JOIN Usuarios us ON cr.rs_prof = us.rs_ra
    WHERE us.rs_ra = 2222204888;
SELECT distinct us.nome, us.rs_ra, cr.id_turma, cr.dia_semana
    FROM Cronograma cr INNER JOIN Usuarios us ON cr.rs_prof = us.rs_ra
    WHERE us.rs_ra = 2222204885;

-- 5: Exibindo a turma de um determinado aluno
SELECT us.rs_ra, us.nome, t.id FROM Usuarios us
    INNER JOIN Boletim b ON b.ra = us.rs_ra
    INNER JOIN Turmas t ON t.id = b.id_turma
    WHERE us.rs_ra = 2222204890 AND t.data_ano = 2023;
SELECT distinct us.rs_ra, us.nome FROM Usuarios us
    INNER JOIN Boletim b ON b.ra = us.rs_ra
    INNER JOIN Turmas t ON t.id = b.id_turma
    WHERE (us.rs_ra = 2222204890 OR nome = 'Eric Castro') AND t.data_ano = 2023 AND t.id = 41;

-- 6: Exibindo o cronograma de um determinado aluno
SELECT cr.disciplina, cr.dia_semana FROM Cronograma cr
    WHERE cr.id_turma IN (SELECT b.id_turma FROM Usuarios us
    INNER JOIN Boletim b ON b.ra = us.rs_ra
    INNER JOIN Turmas t ON t.id = b.id_turma
    WHERE us.rs_ra = 2222204890 AND t.data_ano = 2023) ORDER BY dia_semana, ordem;

-- 7: Exibindo o cronograma de um determinado professor
-- 7.1: Consulta detalhada
SELECT t.data_ano, us.rs_ra, us.nome, cr.dia_semana, t.ano, t.serie
    FROM Cronograma cr INNER JOIN Usuarios us ON cr.rs_prof = us.rs_ra
    INNER JOIN Turmas t ON cr.id_turma = t.id
    WHERE (us.rs_ra = 2222204885 OR us.nome = 'Marina') AND (us.cargo = 'Professor' OR us.cargo = 'Professora') AND t.data_ano = 2023 
    ORDER BY cr.dia_semana, cr.ordem;
-- 7.1: Consulta simples
SELECT cr.dia_semana, t.ano, t.serie
    FROM Cronograma cr INNER JOIN Usuarios us ON cr.rs_prof = us.rs_ra
    INNER JOIN Turmas t ON cr.id_turma = t.id
    WHERE us.rs_ra = 2020569887 AND t.data_ano = 2023 ORDER BY t.turno, cr.dia_semana, cr.ordem;

--------------- BOLETIM ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Criando o boletim de um aluno
-- 1.1: Boletim completo
INSERT INTO Boletim VALUES (1, 2222204880, 'Português', 2, 10, 9, 9.5, 3, 15, 'Aprovado', 40);
INSERT INTO Boletim VALUES (2, 2222204880, 'Matemática', 2, 8, 7, 7.5, 0, 15, 'Aprovado', 40);
INSERT INTO Boletim VALUES (3, 2222204880, 'Matemática', 1, 9, 8.5, 7.5, 0, 15, 'Aprovado', 38);
INSERT INTO Boletim VALUES (4, 2222204890, 'Geografia', 3, 6.5, 8.2, 7.35, 1, 10, 'Aprovado', 41);
INSERT INTO Boletim VALUES (5, 2222204890, 'História', 4, 7, 10, 8.5, 2, 10, 'Aprovado', 41);
INSERT INTO Boletim VALUES (6, 2222204890, 'Português', 4, 8, 10, 9, 4, 15,	'Aprovado', 41);
-- 1.2: Boletim inicial
INSERT INTO Boletim (id, ra, disciplina, bimestre, av1, limite_faltas, id_turma) VALUES (7, 2222204890, 'Matemática', 4, 15, 41);

----- ALTERAÇÃO DOS DADOS -----

-- Atualizando as notas de um aluno
UPDATE Boletim SET av1 = 8.7, av2 = 9.3 WHERE id_turma = 41 AND bimestre = 4 AND disciplina = 'Matemática' AND ra = 2222204890;

-- Atualizando as faltas de um aluno
UPDATE Boletim SET faltas = 5 WHERE id_turma = 41 AND bimestre = 4 AND disciplina = 'Matemática' AND ra = 2222204890;

-- Atualizando a média de um aluno
UPDATE Boletim SET media = 9 WHERE id_turma = 41 AND bimestre = 4 AND disciplina = 'Matemática' AND ra = 2222204890;

-- Atualizando a situação de um aluno
UPDATE Boletim SET situacao = 'Aprovado' WHERE id_turma = 41 AND bimestre = 4 AND disciplina = 'Matemática' and ra = 2222204890;

----- CONSULTA DOS DADOS -----

-- 1: Consultando o boletim de um determinado aluno
SELECT us.nome, us.rs_ra, b.bimestre, b.disciplina, b.av1, b.av2, b.media, b.faltas, b.situacao, b.limite_faltas, t.ano, t.serie, t.data_ano
    FROM Boletim b INNER JOIN Usuarios us ON us.rs_ra = b.ra
    INNER JOIN Turmas t ON t.id = b.id_turma
    WHERE (us.rs_ra = 2222204880 OR us.nome = 'Geovanna Vieira') AND t.data_ano = 2023 AND t.ano = '7º' AND t.serie = 'C' AND b.bimestre = 2;
SELECT b.bimestre, b.disciplina, b.av1, b.av2, b.media, b.faltas, b.situacao, b.limite_faltas, t.ano, t.serie, t.data_ano, us.nome, us.rs_ra
	FROM Boletim b INNER JOIN Usuarios us ON us.rs_ra = b.ra
    INNER JOIN Turmas t ON t.id = b.id_turma
	WHERE (us.rs_ra = 2222204880 OR us.nome = 'Geovanna Vieira') AND t.data_ano = 2022 AND t.ano = '4º' AND t.serie = 'A' AND b.bimestre = 1;
SELECT b.disciplina, b.bimestre, b.av1, b.av2, b.media, b.faltas, b.situacao, b.limite_faltas, t.ano, t.serie, t.data_ano
	FROM Boletim b INNER JOIN Usuarios us ON us.rs_ra = b.ra
    INNER JOIN Turmas t ON t.id = b.id_turma
	WHERE (us.rs_ra = 2222204890 OR us.nome = 'Eric Castro') AND t.data_ano = 2023 AND b.bimestre = 4

--------------- OCORRÊNCIAS ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Criando uma ocorrência
INSERT INTO Ocorrencias VALUES (100, 'Quebrou nariz do colega', to_date('31/08/2023', 'DD/MM/YYYY'));
INSERT INTO Ocorrencias VALUES (101, 'Passou mal', to_date('22/10/2023', 'DD/MM/YYYY'));
INSERT INTO Ocorrencias VALUES (102, 'Riscou a mesa', to_date('12/09/2023', 'DD/MM/YYYY'));

-- 2: Associando alunos à uma ocorrência
INSERT INTO Ocorrencias_Alunos VALUES (100, 2222204890);
INSERT INTO Ocorrencias_Alunos VALUES (100, 2222204891);
INSERT INTO Ocorrencias_Alunos VALUES (101, 2222204880);
INSERT INTO Ocorrencias_Alunos VALUES (102, 2222204890);

----- ALTERAÇÃO DOS DADOS -----

-- 1: Atualizando uma ocorrência
UPDATE Ocorrencias SET observacoes = 'Briga em sala', data_ocor = to_date('26/08/2023', 'DD/MM/YYYY') WHERE id = 100;

-- 2: Removendo um aluno de uma ocorrência
DELETE FROM Ocorrencias_Alunos WHERE id_ocor = 100 AND ra = 2222204891;

-- 3: Excluindo uma ocorrência
DELETE FROM Ocorrencias WHERE id = 100;

----- CONSULTA DOS DADOS -----

-- 1: Consultando todas as ocorrências
SELECT * FROM Ocorrencias;

-- 2: Consultando todas as ocorrências de um determinado aluno.
SELECT oc.observacoes, oc.data_ocor FROM Ocorrencias oc
    INNER JOIN Ocorrencias_Alunos oa ON oa.id_ocor = oc.id
    WHERE oa.ra = 2222204890;

-- 3: Consultando todos os alunos envolvidos em uma determinada ocorrência
-- 3.1: Consulta simples
SELECT us.nome "Envolvidos", us.rs_ra "RA dos envolvidos" 
    FROM Ocorrencias ocor INNER JOIN Ocorrencias_Alunos ocorAlu ON ocor.id = ocorAlu.id_ocor
    INNER JOIN Usuarios us ON ocorAlu.ra = us.rs_ra
    WHERE ocor.id = 100 ORDER BY ocor.id ASC;
-- 3.2: Consulta detalhada
SELECT distinct ocor.id, us.rs_ra "RA dos envolvidos", us.nome "Envolvidos", t.ano, t.serie
    FROM Ocorrencias ocor INNER JOIN Ocorrencias_Alunos oa ON ocor.id = oa.id_ocor
    INNER JOIN Usuarios us ON oa.ra = us.rs_ra
    INNER JOIN Boletim b ON b.ra = us.rs_ra
    INNER JOIN Turmas t ON t.id = b.id_turma
    WHERE ocor.id = 100 AND (us.rs_ra = 2222204890 AND t.data_ano = 2023) ORDER BY ocor.id ASC;	

--------------- CONTATO ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Realizando um contato
INSERT INTO Contatos VALUES (1, 'davicosta@gmail.com', '(11) 98888-8888', 'Matrícula', to_date('22/09/2023', 'DD/MM/YYYY'));
INSERT INTO Contatos (id, email, mensagem, dia) VALUES (2, 'lucy22@gmail.com', 'Documentação', to_date('17/12/2023', 'DD/MM/YYYY'));
INSERT INTO Contatos (id, telefone, mensagem, dia) VALUES (3, '(11) 99876-5432', 'Documentação', to_date('21/11/2023', 'DD/MM/YYYY'));

----- CONSULTA DOS DADOS -----

-- 1: Consultando todos os contatos
SELECT * FROM Contatos;