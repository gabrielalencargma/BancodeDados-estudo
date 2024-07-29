----- Tabelas para Formatura -----

-- Criação da tabela para cursos
CREATE TABLE Curso (
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(30) NOT NULL
);

-- Inserção dos dados
INSERT INTO Curso (id, nome) VALUES (1, 'Ciência da Computação');
INSERT INTO Curso (id, nome) VALUES (2, 'Engenharia de Software');
INSERT INTO Curso (id, nome) VALUES (3, 'Sistemas de Informação');

-- Criação da tabela para faculdades 
CREATE TABLE Faculdade (
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(50) NOT NULL
);

-- Inserção dos dados
INSERT INTO Faculdade (id, nome) VALUES (1, 'UNINOVE');
INSERT INTO Faculdade (id, nome) VALUES (2, 'UNIP');
INSERT INTO Faculdade (id, nome) VALUES (3, 'SENAC');

-- Criação da tabela para representantes 
CREATE TABLE Representante (
    id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    telefone CHAR(14) UNIQUE NOT NULL
);

-- Inserção dos dados
INSERT INTO Representante (id, nome, telefone) VALUES (1, 'Gabriel', '(11)11111-1111');
INSERT INTO Representante (id, nome, telefone) VALUES (2, 'Letícia', '(22)22222-2222');
INSERT INTO Representante (id, nome, telefone) VALUES (3, 'Lucas', '(33)33333-3333');

-- Criação da tabela para formas de pagamento
CREATE TABLE Forma_Pagamento (
    id INT PRIMARY KEY,
    tipo VARCHAR(20) NOT NULL
);

-- Inserção dos dados
INSERT INTO Forma_Pagamento (id, tipo) VALUES (1, 'Pix');
INSERT INTO Forma_Pagamento (id, tipo) VALUES (2, 'Cartão');
INSERT INTO Forma_Pagamento (id, tipo) VALUES (3, 'Boleto');

-- Criação da tabela para formaturas
CREATE TABLE Formatura (
    id INT PRIMARY KEY NOT NULL,
    id_curso INT NOT NULL,
    id_faculdade INT NOT NULL,
    id_representante INT UNIQUE NOT NULL,
    id_forma_pagamento INT NOT NULL,
    valor_pagamento FLOAT NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES Curso(id),
    FOREIGN KEY (id_faculdade) REFERENCES Faculdade(id),
    FOREIGN KEY (id_representante) REFERENCES Representante(id),
    FOREIGN KEY (id_forma_pagamento) REFERENCES Forma_Pagamento(id)
);

-- Inserção dos dados
INSERT INTO Formatura (id, id_curso, id_faculdade, id_representante, id_forma_pagamento, valor_pagamento) 
    VALUES (1, 2, 1, 2, 2, 250.00);
INSERT INTO Formatura (id, id_curso, id_faculdade, id_representante, id_forma_pagamento, valor_pagamento) 
    VALUES (2, 3, 2, 1, 3, 300.00);
INSERT INTO Formatura (id, id_curso, id_faculdade, id_representante, id_forma_pagamento, valor_pagamento) 
    VALUES (3, 3, 3, 3, 1, 180.00);

----- Tabelas para Evento -----

-- Criação da tabela para eventos 
CREATE TABLE Evento (
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(30) NOT NULL,
    descricao VARCHAR(250) NOT NULL,
    duracao INT NOT NULL
);

-- Inserção dos dados
INSERT INTO Evento (id, nome, descricao, duracao) VALUES (1, 'Colação de Grau', 'xxxxx', 40);
INSERT INTO Evento (id, nome, descricao, duracao) VALUES (2, 'Baile de Formatura', 'xxxxx', 20);
INSERT INTO Evento (id, nome, descricao, duracao) VALUES (3, 'Viagem de Formatura', 'xxxxx', 120);

-- Criação da tabela para status dos eventos 
CREATE TABLE Status_Evento (
    id INT PRIMARY KEY NOT NULL,
    status VARCHAR(10) NOT NULL
);

-- Inserção dos dados
INSERT INTO Status_Evento (id, status) VALUES (1, 'Confirmado');
INSERT INTO Status_Evento (id, status) VALUES (2, 'Cancelado');
INSERT INTO Status_Evento (id, status) VALUES (3, 'Adiado');

-- Criação da tabela para endereços 
CREATE TABLE Endereco (
    id INT PRIMARY KEY NOT NULL,
    rua VARCHAR(50) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cep CHAR(9) UNIQUE NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    estado CHAR(2) NOT NULL
);

-- Inserção dos dados
INSERT INTO Endereco (id, rua, bairro, cep, cidade, estado) 
    VALUES (1, 'xxxxx', 'xxxxx', '11111-111', 'São Paulo', 'SP');
INSERT INTO Endereco (id, rua, bairro, cep, cidade, estado) 
    VALUES (2, 'xxxxx', 'xxxxx', '22222-222', 'Araçatuba', 'SP');
INSERT INTO Endereco (id, rua, bairro, cep, cidade, estado) 
    VALUES (3, 'xxxxx', 'xxxxx', '33333-333', 'Taboão da Serra', 'SP');
INSERT INTO Endereco (id, rua, bairro, cep, cidade, estado) 
    VALUES (4, 'xxxxx', 'xxxxx', '44444-444', 'Curitiba', 'PR');
INSERT INTO Endereco (id, rua, bairro, cep, cidade, estado) 
    VALUES (5, 'xxxxx', 'xxxxx', '55555-555', 'Rio de Janeiro', 'RJ');

-- Criação da tabela intermediária para eventos e formaturas 
CREATE TABLE Evento_Formatura (
    id_formatura INT NOT NULL,
    id_evento INT NOT NULL,
    id_endereco INT NOT NULL,
    data DATE NOT NULL,
    id_status_evento INT NOT NULL,
    nova_data DATE,
    evento_fechado CHAR(1) NOT NULL CHECK (evento_fechado IN ('S', 'N')),
    convidados INT,
    PRIMARY KEY (id_formatura, id_evento),
    FOREIGN KEY (id_formatura) REFERENCES Formatura(id),
    FOREIGN KEY (id_evento) REFERENCES Evento(id),
    FOREIGN KEY (id_endereco) REFERENCES Endereco(id),
    FOREIGN KEY (id_status_evento) REFERENCES Status_Evento(id),
    CHECK ((id_status_evento = 1 AND nova_data IS NULL) OR (id_status_evento = 2 AND nova_data IS NULL) 
    	OR (id_status_evento = 3 AND nova_data IS NOT NULL)),
    CHECK ((evento_fechado = 'S' AND convidados IS NOT NULL) OR (evento_fechado = 'N' AND convidados IS NULL))
);

-- Inserção dos dados 
INSERT INTO Evento_Formatura (id_formatura, id_evento, id_endereco, data, id_status_evento, evento_fechado, convidados) 
    VALUES (1, 1, 1, TO_DATE('16/08/2022', 'DD/MM/YYYY'), 1, 'S', 100);
INSERT INTO Evento_Formatura (id_formatura, id_evento, id_endereco, data, id_status_evento, evento_fechado) 
    VALUES (1, 2, 5, TO_DATE('09/11/2022', 'DD/MM/YYYY'), 2, 'N');
INSERT INTO Evento_Formatura (id_formatura, id_evento, id_endereco, data, id_status_evento, nova_data, evento_fechado) 
    VALUES (1, 3, 4, TO_DATE('22/12/2022', 'DD/MM/YYYY'), 3, TO_DATE('04/01/2023', 'DD/MM/YYYY'), 'N');

----- Tabelas para Funcionário -----

-- Criação da tabela para uniformes 
CREATE TABLE Uniforme (
    id INT PRIMARY KEY NOT NULL,
    descricao VARCHAR(100) NOT NULL
);

-- Inserção dos dados
INSERT INTO Uniforme (id, descricao) VALUES (1, 'Uniforme de Recepcionista');

-- Criação da tabela para profissões 
CREATE TABLE Profissao (
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(50) NOT NULL,
    limite_hora_extra INT NOT NULL,
    valor_hora_extra FLOAT NOT NULL,
    uniformizado CHAR(1) NOT NULL CHECK (uniformizado IN ('S', 'N')),
    id_uniforme INT,
    FOREIGN KEY (id_uniforme) REFERENCES Uniforme(id),
    CHECK ((uniformizado = 'S' AND id_uniforme IS NOT NULL) OR (uniformizado = 'N' AND id_uniforme IS NULL))
);

-- Inserção dos dados
INSERT INTO Profissao (id, nome, limite_hora_extra, valor_hora_extra, uniformizado) 
    VALUES (1, 'Garçom', 40, 8.50, 'N');
INSERT INTO Profissao (id, nome, limite_hora_extra, valor_hora_extra, uniformizado) 
    VALUES (2, 'Segurança', 40, 10.0, 'N');
INSERT INTO Profissao (id, nome, limite_hora_extra, valor_hora_extra, uniformizado, id_uniforme) 
    VALUES (3, 'Recepcionista', 40, 6.50, 'S', 1);

-- Criação da tabela para status dos funcionários
CREATE TABLE Status_Funcionario (
    id INT PRIMARY KEY NOT NULL,
    status VARCHAR(10) NOT NULL
);

-- Inserção dos dados
INSERT INTO Status_Funcionario (id, status) VALUES (1, 'Contratado');
INSERT INTO Status_Funcionario (id, status) VALUES (2, 'Demitido');

-- Criação da tabela para funcionários
CREATE TABLE Funcionario (
    matricula INT PRIMARY KEY NOT NULL,
    nome VARCHAR(50) NOT NULL,
    telefone CHAR(14) UNIQUE NOT NULL,
    id_profissao INT NOT NULL,
    salario FLOAT,
    id_status_funcionario INT NOT NULL,
    FOREIGN KEY (id_profissao) REFERENCES Profissao(id),
    FOREIGN KEY (id_status_funcionario) REFERENCES Status_Funcionario(id),
    CHECK ((id_status_funcionario = 1 AND salario IS NOT NULL) 
    	OR (id_status_funcionario = 2 AND salario IS NULL))
);

-- Inserção dos dados
INSERT INTO Funcionario (matricula, nome, telefone, id_profissao, salario, id_status_funcionario) 
    VALUES (1, 'Júlio', '(77)77777-7777', 2, 1800, 1);
INSERT INTO Funcionario (matricula, nome, telefone, id_profissao, salario, id_status_funcionario) 
    VALUES (2, 'Fernanda', '(88)88888-8888', 3, 1300, 1);
INSERT INTO Funcionario (matricula, nome, telefone, id_profissao, id_status_funcionario) 
    VALUES (3, 'Samuel', '(99)99999-9999', 1, 2);

-- Criação da tabela intermediária para funcionarios e eventos 
CREATE TABLE Funcionario_Evento (
    id_evento INT NOT NULL,
    id_funcionario INT NOT NULL,
    horas INT NOT NULL,
    PRIMARY KEY (id_evento, id_funcionario),
    FOREIGN KEY (id_evento) REFERENCES Evento(id),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(matricula)
);

-- Inserção dos dados
INSERT INTO Funcionario_Evento (id_evento, id_funcionario, horas) VALUES (1, 1, 40);
INSERT INTO Funcionario_Evento (id_evento, id_funcionario, horas) VALUES (1, 2, 40);
INSERT INTO Funcionario_Evento (id_evento, id_funcionario, horas) VALUES (2, 1, 20);
INSERT INTO Funcionario_Evento (id_evento, id_funcionario, horas) VALUES (3, 1, 120);

----- Tabelas para Buffet -----

-- Criação da tabela para buffets
CREATE TABLE Buffet (
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(50) NOT NULL,
    cnpj CHAR(18) NOT NULL,
    id_endereco INT UNIQUE NOT NULL,
    inicio_parceria DATE NOT NULL,
    termino_parceria DATE NOT NULL,
    FOREIGN KEY (id_endereco) REFERENCES Endereco(id)
);

-- Inserção dos dados
INSERT INTO Buffet (id, nome, cnpj, id_endereco, inicio_parceria, termino_parceria) 
    VALUES (1, 'Doce Sabor', '11.111.111/1111-11', 3, TO_DATE('12/09/2023', 'DD/MM/YYYY'), TO_DATE('27/05/2024', 'DD/MM/YYYY'));
INSERT INTO Buffet (id, nome, cnpj, id_endereco, inicio_parceria, termino_parceria) 
    VALUES (2, 'Frutos da Paixão', '22.222.222/2222-22', 2, TO_DATE('04/07/2022', 'DD/MM/YYYY'), TO_DATE('19/11/2025', 'DD/MM/YYYY'));

-- Criação da tabela para cardápios
CREATE TABLE Cardapio (
    id INT PRIMARY KEY NOT NULL,
    id_buffet INT NOT NULL,
    descricao VARCHAR(250) NOT NULL,
    preco_por_pessoa FLOAT NOT NULL,
    FOREIGN KEY (id_buffet) REFERENCES Buffet(id) 
);

-- Inserção dos dados
INSERT INTO Cardapio (id, id_buffet, descricao, preco_por_pessoa) VALUES (1, 1, 'xxxxx', 82.50);
INSERT INTO Cardapio (id, id_buffet, descricao, preco_por_pessoa) VALUES (2, 1, 'xxxxx', 100.00);
INSERT INTO Cardapio (id, id_buffet, descricao, preco_por_pessoa) VALUES (3, 1, 'xxxxx', 59.99);
INSERT INTO Cardapio (id, id_buffet, descricao, preco_por_pessoa) VALUES (4, 1, 'xxxxx', 95.50);
INSERT INTO Cardapio (id, id_buffet, descricao, preco_por_pessoa) VALUES (5, 2, 'xxxxx', 47.99);
INSERT INTO Cardapio (id, id_buffet, descricao, preco_por_pessoa) VALUES (6, 2, 'xxxxx', 56.50);

----- Seleção dos Dados -----

-- Select da tabela "Curso" 
SELECT * FROM Curso;

-- Select da tabela "Faculdade"
SELECT * FROM Faculdade;

-- Select da tabela "Representante" 
SELECT * FROM Representante;

-- Select da tabela "Forma_Pagamento" 
SELECT * FROM Forma_Pagamento;

-- Select da tabela "Formatura" 
SELECT * FROM Formatura;

-- Select da tabela "Evento" 
SELECT * FROM Evento;

-- Select da tabela "Status_Evento" 
SELECT * FROM Status_Evento;

-- Select da tabela "Endereco" 
SELECT * FROM Endereco;

-- Select da tabela "Evento_Formatura" 
SELECT * FROM Evento_Formatura;

-- Select da tabela "Uniforme" 
SELECT * FROM Uniforme;

-- Select da tabela "Profissao" 
SELECT * FROM Profissao;

-- Select da tabela "Status_Funcionario"
SELECT * FROM Status_Funcionario;

-- Select da tabela "Funcionario" 
SELECT * FROM Funcionario;

-- Select da tabela "Funcionario_Evento" 
SELECT * FROM Funcionario_Evento;

-- Select da tabela "Buffet" 
SELECT * FROM Buffet;

-- Select da tabela "Cardapio" 
SELECT * FROM Cardapio;