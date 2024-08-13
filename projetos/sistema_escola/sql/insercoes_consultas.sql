--------------- CADASTRO/LOGIN/EDIÇÃO DE USUÁRIOS ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Ao cadastrar um usuário:
    -- 1.1: Aluno:
    INSERT INTO Usuarios VALUES (2222204880, 'Aluno', 'abcd1234', 'Geovanna Vieira', 'geovanna.lascouse@cjs.edu.br', '(11) 99999-9998');
    INSERT INTO Usuarios VALUES (2222204890, 'Aluno', 'abcd1234', 'Eric Castro', 'eric.castro@cjs.edu.br', '(11) 99999-1006');
    INSERT INTO Usuarios VALUES (2222204891, 'Aluno', 'abcd1234', 'Rodrigo Mendes', 'rodrigo039@cjs.edu.br', '(11) 99999-1007');
    -- 1.2: Funcionário:
    INSERT INTO Usuarios VALUES (2020569887, 'Professora', 'abc1234', 'Jorgina', 'jorgina.santos@cjs.edu.br', '(11) 99999-1000');
    INSERT INTO Usuarios VALUES (2222204885, 'Professora', 'abc1234', 'Marina', 'mari@cjs.edu.br', '(11) 99999-9999');
    INSERT INTO Usuarios VALUES (2222204888, 'Professora', 'abc1234', 'Márcia', 'marcinha@cjs.edu.br', '(11) 99999-1001');
    INSERT INTO Usuarios VALUES (2222204889, 'Professor', 'abc1234', 'Robson', 'rob@cjs.edu.br', '(11) 99999-1002');
    INSERT INTO Usuarios VALUES (2222204886, 'Professora', 'abc1234', 'Linda', 'linda@cjs.edu.br', '(11) 99999-1003');
    INSERT INTO Usuarios VALUES (2222204884, 'Professor', 'abc1234', 'Cleber', 'cleb@cjs.edu.br', '(11) 99999-1004');
    INSERT INTO Usuarios VALUES (5555555555, 'Auxiliar Adm', 'xxxyyy', 'Chico Bento', 'chico1000@cjs.edu.br', '(11) 99999-1008');
    INSERT INTO Usuarios VALUES (9999999999, 'Diretor', 'xxxyyy', 'Eduardo Costa', 'eduardo.costa@cjs.edu.br', '(11) 99999-1009');

----- ALTERAÇÃO DOS DADOS -----

-- 1: Ao alterar as informações pessoais de um usuário:
UPDATE Usuarios SET telefone = '(11) 99999-5454' WHERE rs_ra = 2222204889;

-- 2: Ao alterar a senha de um usuário:
UPDATE Usuarios SET senha = 'novasenha' WHERE email = 'geovanna.lascouse@cjs.edu.br';
UPDATE Usuarios SET senha = 'novasenha' WHERE telefone = '(11) 99999-9998';

-- 3: Ao remover um usuário:
DELETE FROM Usuarios WHERE rs_ra = 2222204885;

----- CONSULTA DOS DADOS -----

-- 1: Ao tentar se logar, será consultado as informações de login do usuário.
SELECT rs_ra, cargo FROM Usuarios WHERE rs_ra = 2222204880 AND senha = 'abcd1234';

-- 2: Ao solicitar a redefinição da senha, será consultado as informações de contato do usuário.
SELECT email, telefone FROM Usuarios WHERE email = 'geovanna.lascouse@cjs.edu.br' OR telefone = '(11) 99999-9998';

-- 2: Exclusivo de funcionários (difere do professor):
    -- 2.1: Ao acessar a área de usuários, será exibido todos os usuários cadastrados.
    SELECT rs_ra, cargo, nome, email, telefone FROM Usuarios ORDER BY rs_ra;
    -- 2.2: Ao procurar todos os usuários de um cargo:
    SELECT rs_ra, cargo, nome, email, telefone FROM Usuarios WHERE cargo = 'Aluno';
    -- 2.3: Ao selecionar um usuário para editá-lo, será exibido todas as suas informações.
    SELECT * FROM Usuarios WHERE rs_ra = 2222204889;

--------------- TURMAS E CRONOGRAMA ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Criando as turmas:
INSERT INTO Turmas VALUES (38, '4º', 'A', 2022, 'Manhã');
INSERT INTO Turmas VALUES (39, '5º', 'B', 2023, 'Tarde');
INSERT INTO Turmas VALUES (40, '7º', 'C', 2023, 'Manhã');
INSERT INTO Turmas VALUES (41, '8º', 'A', 2023, 'Tarde');
INSERT INTO Turmas VALUES (42, '6º', 'D', 2023, 'Manhã');

-- 1: Ao associar um professor à uma turma:
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

-- 1: Ao acessar a área de cronograma, será exibido:
    -- 1.1: Para um aluno, o cronograma da sua turma atual e informações de faltas.
    SELECT cr.disciplina, cr.dia_semana FROM Cronograma cr
        WHERE cr.id_turma IN (SELECT b.id_turma FROM Usuarios us
        INNER JOIN Boletim b ON b.ra = us.rs_ra
        INNER JOIN Turmas t ON t.id = b.id_turma
        WHERE us.rs_ra = 2222204890 AND t.data_ano = 2023) ORDER BY dia_semana, ordem;
    SELECT b.disciplina, b.faltas, b.bimestre, t.data_ano, t.ano, t.serie
            FROM Usuarios us INNER JOIN Boletim b ON b.ra = us.rs_ra
            INNER JOIN Turmas t ON b.id_turma = t.id
            WHERE us.rs_ra = 2222204890;
    -- 1.2: Para um professor, o seu cronograma referente as turmas atuais que ele ministra aula.
    SELECT cr.dia_semana, t.ano, t.serie
        FROM Cronograma cr INNER JOIN Usuarios us ON cr.rs_prof = us.rs_ra
        INNER JOIN Turmas t ON cr.id_turma = t.id
        WHERE us.rs_ra = 2020569887 AND t.data_ano = 2023 ORDER BY t.turno, cr.dia_semana, cr.ordem;

-- 2: Exclusivo de funcionário (difere do professor):
    -- 2.1: Ao acessar a área de cronograma, será possível visualizar um cronograma de um professor ou aluno por meio de filtros.
        -- 2.1.1: Professor:
            -- 2.1.1.1: Ao tentar filtrar um professor, será exibido todos os professores cadastrados.
            SELECT nome, rs_ra FROM Usuarios WHERE cargo = 'Professor' OR cargo = 'Professora';
            -- 2.1.1.2: Ao tentar filtrar um ano, será exibido os anos que o professor ministrou aula.
            SELECT DISTINCT t.data_ano FROM Turmas t 
                INNER JOIN Cronograma cr ON t.id = cr.id_turma
                INNER JOIN Usuarios us ON us.rs_ra = cr.rs_prof
                WHERE us.rs_ra = 2222204885 ORDER BY t.data_ano DESC;
            -- 2.1.1.3: Ao aplicar os filtros, será consultado o cronograma do professor.
            SELECT t.data_ano, us.rs_ra, us.nome, cr.dia_semana, t.ano, t.serie
                FROM Cronograma cr INNER JOIN Usuarios us ON cr.rs_prof = us.rs_ra
                INNER JOIN Turmas t ON cr.id_turma = t.id
                WHERE (us.rs_ra = 2222204885 OR us.nome = 'Marina') AND (us.cargo = 'Professor' OR us.cargo = 'Professora') AND t.data_ano = 2023 
                ORDER BY cr.dia_semana, cr.ordem;
        -- 2.1.2: Aluno:
            -- 2.1.2.1: Ao tentar filtrar um aluno, será exibido todos os alunos da escola.
            SELECT nome, rs_ra FROM Usuarios WHERE cargo = 'Aluno';
            -- 2.1.2.2: Ao tentar filtrar um ano, será exibido os anos que o aluno estudou.
            SELECT DISTINCT t.data_ano FROM Cronograma cr
                WHERE cr.id_turma IN (SELECT b.id_turma FROM Usuarios us
                INNER JOIN Boletim b ON b.ra = us.rs_ra
                INNER JOIN Turmas t ON t.id = b.id_turma
                WHERE us.rs_ra = 2222204890) ORDER BY t.data_ano DESC;
            -- 2.1.2.3: Ao aplicar os filtros, será consultado o cronograma do aluno.
            SELECT cr.disciplina, cr.dia_semana FROM Cronograma cr
                WHERE cr.id_turma IN (SELECT b.id_turma FROM Usuarios us
                INNER JOIN Boletim b ON b.ra = us.rs_ra
                INNER JOIN Turmas t ON t.id = b.id_turma
                WHERE us.rs_ra = 2222204890 AND t.data_ano = 2023) ORDER BY cr.dia_semana, cr.ordem;

--------------- CRIAÇÃO/EDIÇÃO DE BOLETIM ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Ao criar um boletim bimestral de um aluno:
    -- 1.1: Boletim completo:
    INSERT INTO Boletim VALUES (1, 2222204880, 'Português', 2, 10, 9, 9.5, 3, 15, 'Aprovado', 40);
    INSERT INTO Boletim VALUES (2, 2222204880, 'Matemática', 2, 8, 7, 7.5, 0, 15, 'Aprovado', 40);
    INSERT INTO Boletim VALUES (3, 2222204880, 'Matemática', 1, 9, 8.5, 7.5, 0, 15, 'Aprovado', 38);
    INSERT INTO Boletim VALUES (4, 2222204890, 'Geografia', 3, 6.5, 8.2, 7.35, 1, 10, 'Aprovado', 41);
    INSERT INTO Boletim VALUES (5, 2222204890, 'História', 4, 7, 10, 8.5, 2, 10, 'Aprovado', 41);
    INSERT INTO Boletim VALUES (6, 2222204890, 'Português', 4, 8, 10, 9, 4, 15,	'Aprovado', 41);
    -- 1.2: Boletim inicial:
    INSERT INTO Boletim (id, ra, disciplina, bimestre, av1, limite_faltas, id_turma) VALUES (7, 2222204890, 'Matemática', 4, 15, 41);

----- ALTERAÇÃO DOS DADOS -----

-- Ao atualizar as notas de um aluno:
UPDATE Boletim SET av1 = 8.7, av2 = 9.3 WHERE id_turma = 41 AND bimestre = 4 AND disciplina = 'Matemática' AND ra = 2222204890;

-- Ao atualizar as faltas de um aluno:
UPDATE Boletim SET faltas = 5 WHERE id_turma = 41 AND bimestre = 4 AND disciplina = 'Matemática' AND ra = 2222204890;

----- CONSULTA DOS DADOS -----

-- 1: Exclusivo de aluno:
    -- 1.1: Ao acessar a área de boletim, será possível visualizar um boletim seu por meio de filtros.
        -- 1.1.1: Ao tentar filtrar um ano, será exibido os anos que o aluno estudou.
        SELECT DISTINCT t.data_ano FROM Turmas t 
            INNER JOIN Boletim b ON t.id = b.id_turma
            INNER JOIN Usuarios us ON us.rs_ra = b.ra
            WHERE us.rs_ra = 2222204890;
        -- 1.1.2: Ao tentar filtrar um bimestre, será exibido os bimestres do ano filtrado.
        SELECT DISTINCT b.bimestre FROM Turmas t 
            INNER JOIN Boletim b ON t.id = b.id_turma
            INNER JOIN Usuarios us ON us.rs_ra = b.ra
            WHERE us.rs_ra = 2222204890 AND t.data_ano = 2023;
        -- 1.1.3: Ao aplicar os filtros, será consultado o boletim do aluno.
        SELECT b.disciplina, b.bimestre, b.av1, b.av2, b.media, b.faltas, b.situacao, b.limite_faltas, t.ano, t.serie, t.data_ano
	        FROM Boletim b INNER JOIN Usuarios us ON us.rs_ra = b.ra
            INNER JOIN Turmas t ON t.id = b.id_turma
	        WHERE (us.rs_ra = 2222204890 OR us.nome = 'Eric Castro') AND t.data_ano = 2023 AND b.bimestre = 4

-- 2: Exclusivo de professor e funcionário:
    -- 2.1: Ao acessar a área de boletim, será possível visualizar um boletim de um aluno por meio de filtros.
        -- 2.1.1: Ao tentar filtrar uma turma, será exibido todas as turmas da escola.
            SELECT ano, serie FROM Turmas;
        -- 2.1.2: Ao tentar filtrar um aluno, será exibido os alunos da turma filtrada.
            SELECT DISTINCT us.rs_ra, us.nome FROM Usuarios us
                INNER JOIN Boletim b ON b.ra = us.rs_ra
                INNER JOIN Turmas t ON t.id = b.id_turma
                WHERE t.id = 40;
        -- 2.1.3: Ao tentar filtrar um bimestre, será exibido os bimestres do aluno na turma filtrada.
            SELECT DISTINCT b.bimestre FROM Usuarios us
                INNER JOIN Boletim b ON b.ra = us.rs_ra
                INNER JOIN Turmas t ON t.id = b.id_turma
                WHERE t.id = 40 AND (us.rs_ra = 2222204880 OR us.nome = 'Geovanna Vieira');
        -- 2.1.4: Ao aplicar os filtros, será consultado o boletim do aluno
            SELECT us.nome, us.rs_ra, b.bimestre, b.disciplina, b.av1, b.av2, b.media, b.faltas, b.situacao, b.limite_faltas, t.ano, t.serie, t.data_ano
		        FROM Boletim b INNER JOIN Usuarios us ON us.rs_ra = b.ra
    	        INNER JOIN Turmas t ON t.id = b.id_turma
		        WHERE (us.rs_ra = 2222204880 OR us.nome = 'Geovanna Vieira') AND t.data_ano = 2023 AND t.ano = '7º' AND t.serie = 'C' AND b.bimestre = 2;

-- 3: Exclusivo de professor:
    -- 3.1: Ao selecionar um boletim de um aluno para editá-lo, será exibido as informações de notas e faltas do aluno.
    SELECT b.bimestre, b.disciplina, b.av1, b.av2, b.faltas, b.situacao
        FROM Boletim b INNER JOIN Usuarios us ON us.rs_ra = b.ra
        INNER JOIN Turmas t ON t.id = b.id_turma
        WHERE (us.rs_ra = 2222204880 OR us.nome = 'Geovanna Vieira') AND t.turma = 40 AND b.disciplina = 'Matemática';


--------------- REGISTRO/EDIÇÃO DE OCORRÊNCIAS ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Ao registrar uma ocorrência:
INSERT INTO Ocorrencias VALUES (100, 'Quebrou nariz do colega', to_date('31/08/2023', 'DD/MM/YYYY'));
INSERT INTO Ocorrencias VALUES (101, 'Passou mal', to_date('22/10/2023', 'DD/MM/YYYY'));
INSERT INTO Ocorrencias VALUES (102, 'Riscou a mesa', to_date('12/09/2023', 'DD/MM/YYYY'));

-- 2: Ao associar um aluno à uma ocorrência:
INSERT INTO Ocorrencias_Alunos VALUES (100, 2222204890);
INSERT INTO Ocorrencias_Alunos VALUES (100, 2222204891);
INSERT INTO Ocorrencias_Alunos VALUES (101, 2222204880);
INSERT INTO Ocorrencias_Alunos VALUES (102, 2222204890);

----- ALTERAÇÃO DOS DADOS -----

-- 1: Ao alterar as informações de uma ocorrência:
UPDATE Ocorrencias SET observacoes = 'Briga em sala', data_ocor = to_date('26/08/2023', 'DD/MM/YYYY') WHERE id = 100;

-- 2: Ao desassociar um aluno de uma ocorrência:
DELETE FROM Ocorrencias_Alunos WHERE id_ocor = 100 AND ra = 2222204891;

-- 3: Ao remover uma ocorrência:
DELETE FROM Ocorrencias WHERE id = 100;

----- CONSULTA DOS DADOS -----

-- 1: Ao acessar a área de ocorrências, será exibido:
    -- 1.1: Para um aluno, todas as suas ocorrências.
    SELECT oc.observacoes, oc.data_ocor FROM Ocorrencias oc
        INNER JOIN Ocorrencias_alunos oa ON oa.id_ocor = oc.id
        WHERE oa.ra = 2222204890;
    -- 1.2: Para um professor/funcionário, todas as ocorrências dos alunos.
    SELECT observacoes, data_ocor FROM Ocorrencias;

-- 2: Ao procurar todas as ocorrências de um aluno:
SELECT oc.observacoes, oc.data_ocor FROM Ocorrencias oc
    INNER JOIN Ocorrencias_alunos oa ON oa.id_ocor = oc.id
    WHERE oa.ra = 2222204890;

-- 3: Ao clicar em "alunos envolvidos", será exibidos todos os alunos associados à ocorrência.
SELECT us.nome "Envolvidos", us.rs_ra "RA dos envolvidos" 
    FROM Ocorrencias ocor INNER JOIN Ocorrencias_alunos ocorAlu ON ocor.id = ocorAlu.id_ocor
    INNER JOIN Usuarios us ON ocorAlu.ra = us.rs_ra
    WHERE ocor.id = 100 ORDER BY ocor.id ASC;

--------------- CONTATO ---------------

----- INSERÇÃO DOS DADOS -----

-- 1: Ao solicitar um contato com a escola:
INSERT INTO Contatos VALUES (1, 'davicosta@gmail.com', '(11) 98888-8888', 'Matrícula', to_date('22/09/2023', 'DD/MM/YYYY'));
INSERT INTO Contatos (id, email, mensagem, dia) VALUES (2, 'lucy22@gmail.com', 'Documentação', to_date('17/12/2023', 'DD/MM/YYYY'));
INSERT INTO Contatos (id, telefone, mensagem, dia) VALUES (3, '(11) 99876-5432', 'Documentação', to_date('21/11/2023', 'DD/MM/YYYY'));

--------------- CONSULTAS EXTRAS ---------------

----- CONSULTA DOS DADOS -----

-- 1: Ao procurar a turma de um aluno:
    SELECT us.rs_ra, us.nome, t.ano. t.serie FROM Usuarios us
        INNER JOIN Boletim b ON b.ra = us.rs_ra
        INNER JOIN Turmas t ON t.id = b.id_turma
        WHERE us.rs_ra = 2222204890 AND t.data_ano = 2023;

-- 2: Ao procurar todos os professores de uma turma:
-- 2.1: Consulta detalhada:
SELECT DISTINCT us.nome "Professor(a)", t.ano, t.serie, t.data_ano
    FROM Usuarios us INNER JOIN Cronograma cr ON us.rs_ra = cr.rs_prof
    INNER JOIN Turmas t ON cr.id_turma = t.id
    WHERE t.id = 40 ORDER BY us.nome ASC;
SELECT DISTINCT us.nome "Professor(a)", t.ano, t.serie, t.data_ano
    FROM Usuarios us INNER JOIN Cronograma cr ON us.rs_ra = cr.rs_prof
    INNER JOIN Turmas t ON cr.id_turma = t.id
    WHERE t.id = 41 ORDER BY us.nome ASC;
-- 2.2: Consulta simples:
SELECT DISTINCT us.nome "Professor(a)", cr.id_turma "Turma"
	FROM Usuarios us INNER JOIN Cronograma cr ON us.rs_ra = cr.rs_prof
    WHERE cr.id_turma = 40 ORDER BY us.nome ASC;
SELECT DISTINCT us.nome "Professor(a)", cr.id_turma "Turma"
	FROM Usuarios us INNER JOIN Cronograma cr ON us.rs_ra = cr.rs_prof
    WHERE cr.id_turma = 41 ORDER BY us.nome ASC;

-- 3: Ao procurar todas as disciplinas de uma turma:
-- 3.1: Consulta detalhada:
SELECT DISTINCT cr.disciplina, t.ano, t.serie, t.data_ano
    FROM Cronograma cr INNER JOIN Turmas t ON cr.id_turma = t.id
    WHERE t.id = 40;
SELECT DISTINCT cr.disciplina, t.ano, t.serie, t.data_ano
    FROM Cronograma cr INNER JOIN Turmas t ON cr.id_turma = t.id
    WHERE t.id = 41;
-- 3.2: Consulta simples:
SELECT DISTINCT disciplina FROM Cronograma WHERE id_turma = 40;
SELECT DISTINCT disciplina FROM Cronograma WHERE id_turma = 41;

-- 4: Ao procurar as disciplinas de uma turma em cada dia da semana:
-- 4.1: Consulta detalhada:
SELECT t.ano, t.serie, t.data_ano, cr.dia_semana, cr.disciplina
    FROM Cronograma cr INNER JOIN Turmas t ON cr.id_turma = t.id
    WHERE t.id = 40;
SELECT t.ano, t.serie, t.data_ano, cr.dia_semana, cr.disciplina
    FROM Cronograma cr INNER JOIN Turmas t ON cr.id_turma = t.id
    WHERE t.id = 41;
-- 4.2: Consulta simples
SELECT dia_semana, disciplina FROM Cronograma WHERE id_turma = 40;
SELECT dia_semana, disciplina FROM Cronograma WHERE id_turma = 41;

-- 5: Ao procurar todas as turmas que um professor ministra aula:
-- 5.1: Consulta detalhada:
SELECT DISTINCT us.nome, us.rs_ra, t.ano, t.serie, t.data_ano
    FROM Cronograma cr INNER JOIN Usuarios us ON cr.rs_prof = us.rs_ra
    INNER JOIN Turmas t ON t.id = cr.id_turma
    WHERE us.rs_ra = 2020569887;
SELECT DISTINCT us.nome, us.rs_ra, t.ano, t.serie, t.data_ano
    FROM Cronograma cr INNER JOIN Usuarios us ON cr.rs_prof = us.rs_ra
    INNER JOIN Turmas t ON t.id = cr.id_turma
    WHERE us.rs_ra = 2222204888;
SELECT DISTINCT us.nome, us.rs_ra, t.ano, t.serie, t.data_ano
    FROM Cronograma cr INNER JOIN Usuarios us ON cr.rs_prof = us.rs_ra
    INNER JOIN Turmas t ON t.id = cr.id_turma
    WHERE us.rs_ra = 2222204885;
-- 5.2: Consulta simples:
SELECT DISTINCT us.nome, us.rs_ra, cr.id_turma, cr.dia_semana
    FROM Cronograma cr INNER JOIN Usuarios us ON cr.rs_prof = us.rs_ra
    WHERE us.rs_ra = 2020569887;
SELECT DISTINCT us.nome, us.rs_ra, cr.id_turma, cr.dia_semana
    FROM Cronograma cr INNER JOIN Usuarios us ON cr.rs_prof = us.rs_ra
    WHERE us.rs_ra = 2222204888;
SELECT DISTINCT us.nome, us.rs_ra, cr.id_turma, cr.dia_semana
    FROM Cronograma cr INNER JOIN Usuarios us ON cr.rs_prof = us.rs_ra
    WHERE us.rs_ra = 2222204885;