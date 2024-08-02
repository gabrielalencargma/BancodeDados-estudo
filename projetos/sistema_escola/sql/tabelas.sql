----- CRIAÇÃO DAS TABELAS -----

-- Tabela para turmas
CREATE TABLE Turmas (
    id INT PRIMARY KEY NOT NULL,
    ano CHAR(3) NOT NULL,
    serie CHAR(1) NOT NULL,
    data_ano INT NOT NULL,
    turno VARCHAR(10) NOT NULL,
    UNIQUE (ano, serie, data_ano)
);

-- Tabela para usuários
CREATE TABLE Usuarios (
    rs_ra INT PRIMARY KEY NOT NULL,
    cargo VARCHAR(15) NOT NULL,
    senha VARCHAR(15) NOT NULL,
    nome VARCHAR(40) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE,
	telefone VARCHAR(30) NOT NULL UNIQUE
);

-- Tabela para cronogramas
CREATE TABLE Cronograma (
    id INT PRIMARY KEY NOT NULL,
    rs_prof INT NOT NULL,
    disciplina VARCHAR(20) NOT NULL,
    id_turma INT NOT NULL,
    dia_semana VARCHAR(15) NOT NULL,
    ordem INT NOT NULL,
    UNIQUE (id_turma, dia_semana, ordem),
    FOREIGN KEY (id_turma) REFERENCES Turmas(id),
    FOREIGN KEY (rs_prof) REFERENCES Usuarios(rs_ra) ON DELETE CASCADE
);

-- Tabela para boletins
CREATE TABLE Boletim (
    id INT PRIMARY KEY NOT NULL,
    ra INT,
    disciplina VARCHAR (20),
    bimestre INT,
    av1 FLOAT,
	av2 FLOAT,
    media FLOAT,
    faltas INT,
    limite_faltas INT,
    situacao VARCHAR(20),
    id_turma INT,
    FOREIGN KEY (ra) REFERENCES Usuarios(rs_ra),
    FOREIGN KEY (id_turma) REFERENCES Turmas(id)
);

-- Tabela para ocorrências
CREATE TABLE Ocorrencias(
    id INT PRIMARY KEY NOT NULL,
    observacoes VARCHAR(100) NOT NULL,
    data_ocor DATE NOT NULL
);

-- Tabela intermediária para alunos e ocorrências
CREATE TABLE Ocorrencias_Alunos(
    id_ocor INT NOT NULL,
    ra INT NOT NULL,
    UNIQUE (id_ocor, ra),
    FOREIGN KEY (id_ocor) REFERENCES Ocorrencias(id) ON DELETE CASCADE,
    FOREIGN KEY (ra) REFERENCES Usuarios(rs_ra)
);

-- Tabela para contatos
CREATE TABLE Contatos (
    id INT PRIMARY KEY NOT NULL,
    email VARCHAR(30),
    telefone VARCHAR(20),
    mensagem VARCHAR(30) NOT NULL,
    dia DATE NOT NULL
);