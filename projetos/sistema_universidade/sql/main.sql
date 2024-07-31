----- CRIAÇÃO DAS TABELAS -----

-- Tabela para disciplinas
CREATE TABLE Disciplina (
    id INT PRIMARY KEY,
    area VARCHAR(30) NOT NULL,
    curso VARCHAR(30) NOT NULL,
    modulo VARCHAR(30) NOT NULL
);

-- Tabela para turmas
CREATE TABLE Turma (
    id INT PRIMARY KEY,
    turno CHAR(1) NOT NULL CHECK (turno IN ('M', 'N')),
    semestre INT NOT NULL CHECK (semestre IN (1, 2)),
    ano INT NOT NULL
);

-- Tabela para professores
CREATE TABLE Professor (
    rs INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(30) NOT NULL,
    telefone CHAR(14) NOT NULL
);

-- Tabela intermediária para professores, turmas e disciplinas
CREATE TABLE Prof_Turma (
    id INT PRIMARY KEY,
    rs_professor INT NOT NULL,
    id_turma INT NOT NULL,
    id_disciplina INT NOT NULL,
    FOREIGN KEY (rs_professor) REFERENCES Professor(rs),
    FOREIGN KEY (id_turma) REFERENCES Turma(id),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplina(id)
);

-- Tabela para alunos
CREATE TABLE Aluno (
    ra INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(30) NOT NULL,
    telefone CHAR(14) NOT NULL,
    id_turma INT NOT NULL,
    FOREIGN KEY (id_turma) REFERENCES Turma(id)
);

--- Tabela para boletim
CREATE TABLE Boletim (
    id INT PRIMARY KEY,
    ra_aluno INT NOT NULL,
    id_prof_turma INT NOT NULL,
    nota FLOAT,
    FOREIGN KEY (ra_aluno) REFERENCES Aluno(ra),
    FOREIGN KEY (id_prof_turma) REFERENCES Prof_Turma(id)
);

----- INSERÇÃO DOS DADOS -----

-- Tabela "Disciplina"
INSERT INTO Disciplina (id, area, curso, modulo) VALUES (1, 'Saúde', 'Medicina', 'Anatomia');
INSERT INTO Disciplina (id, area, curso, modulo) VALUES (2, 'Saúde', 'Medicina', 'Imunologia');
INSERT INTO Disciplina (id, area, curso, modulo) VALUES (3, 'Tecnologia', 'Ciência da Computação', 'Análise de Dados');
INSERT INTO Disciplina (id, area, curso, modulo) VALUES (4, 'Tecnologia', 'Ciência da Computação', 'Gestão de Projetos');
INSERT INTO Disciplina (id, area, curso, modulo) VALUES (5, 'Tecnologia', 'Ciência da Computação', 'Desenvolvimento Web');

-- Tabela "Turma"
INSERT INTO Turma (id, turno, semestre, ano) VALUES (1, 'M', 1, 2023);
INSERT INTO Turma (id, turno, semestre, ano) VALUES (2, 'N', 2, 2023);
INSERT INTO Turma (id, turno, semestre, ano) VALUES (3, 'M', 1, 2024);

-- Tabela "Professor"
INSERT INTO Professor (rs, nome, email, telefone) VALUES (1, 'Adair', 'jair@gmail.com', '(11)11111-1111');
INSERT INTO Professor (rs, nome, email, telefone) VALUES (2, 'Clarice', 'clarice@gmail.com', '(22)22222-2222');
INSERT INTO Professor (rs, nome, email, telefone) VALUES (3, 'João', 'joao@gmail.com', '(33)33333-3333');
INSERT INTO Professor (rs, nome, email, telefone) VALUES (4, 'Aguinaldo', 'aguinaldo@gmail.com', '(44)44444-4444');
INSERT INTO Professor (rs, nome, email, telefone) VALUES (5, 'Mariane', 'mariane@gmail.com', '(55)55555-5555');

-- Tabela "Prof_Turma"
INSERT INTO Prof_Turma (id, rs_professor, id_turma, id_disciplina) VALUES (1, 1, 1, 1);
INSERT INTO Prof_Turma (id, rs_professor, id_turma, id_disciplina) VALUES (2, 2, 1, 2);
INSERT INTO Prof_Turma (id, rs_professor, id_turma, id_disciplina) VALUES (3, 5, 2, 3);
INSERT INTO Prof_Turma (id, rs_professor, id_turma, id_disciplina) VALUES (4, 5, 2, 4);
INSERT INTO Prof_Turma (id, rs_professor, id_turma, id_disciplina) VALUES (5, 3, 3, 5);
INSERT INTO Prof_Turma (id, rs_professor, id_turma, id_disciplina) VALUES (6, 4, 2, 5);
INSERT INTO Prof_Turma (id, rs_professor, id_turma, id_disciplina) VALUES (7, 4, 3, 3);
INSERT INTO Prof_Turma (id, rs_professor, id_turma, id_disciplina) VALUES (8, 3, 3, 4);

-- Tabela "Aluno"
INSERT INTO Aluno (ra, nome, email, telefone, id_turma) VALUES (1, 'Gabriel', 'gabriel@gmail.com', '(21)22222-1111', 2);
INSERT INTO Aluno (ra, nome, email, telefone, id_turma) VALUES (2, 'Afonso', 'afonso@gmail.com', '(23)22222-3333', 2);
INSERT INTO Aluno (ra, nome, email, telefone, id_turma) VALUES (3, 'Cristian', 'cristian@gmail.com', '(56)55555-6666', 1);
INSERT INTO Aluno (ra, nome, email, telefone, id_turma) VALUES (4, 'Eliane', 'eliane@gmail.com', '(91)99999-1111', 1);
INSERT INTO Aluno (ra, nome, email, telefone, id_turma) VALUES (5, 'Sofia', 'sofia@gmail.com', '(84)88888-4444', 3);

-- Tabela "Boletim"
INSERT INTO Boletim (id, ra_aluno, id_prof_turma, nota) VALUES (1, 1, 3, 8.5);
INSERT INTO Boletim (id, ra_aluno, id_prof_turma, nota) VALUES (2, 1, 4, 9.0);
INSERT INTO Boletim (id, ra_aluno, id_prof_turma, nota) VALUES (3, 1, 6, 6.5);
INSERT INTO Boletim (id, ra_aluno, id_prof_turma, nota) VALUES (4, 2, 3, 10.0);
INSERT INTO Boletim (id, ra_aluno, id_prof_turma, nota) VALUES (5, 2, 6, 7.0);
INSERT INTO Boletim (id, ra_aluno, id_prof_turma, nota) VALUES (6, 3, 1, 9.0);
INSERT INTO Boletim (id, ra_aluno, id_prof_turma, nota) VALUES (7, 3, 2, 4.0);
INSERT INTO Boletim (id, ra_aluno, id_prof_turma, nota) VALUES (8, 5, 8, 5.5);

----- SELEÇÃO DOS DADOS -----

SELECT * FROM Disciplina
SELECT * FROM Turma
SELECT * FROM Professor
SELECT * FROM Prof_Turma
SELECT * FROM Aluno
SELECT * FROM Boletim