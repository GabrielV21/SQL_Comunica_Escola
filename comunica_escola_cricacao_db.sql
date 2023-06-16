CREATE DATABASE ComunicaEscola;

USE ComunicaEscola;

CREATE TABLE Enderecos 
(
ID INT NOT NULL AUTO_INCREMENT,
cidade VARCHAR(20) NOT NULL,
rua VARCHAR(20) NOT NULL,
numero INT NOT NULL,
cep INT(8) NOT NULL,
pais VARCHAR(20) NOT NULL,
estado CHAR(2) NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE Responsaveis
(ID INT NOT NULL AUTO_INCREMENT,
pNome VARCHAR(15) NOT NULL,
uNome VARCHAR(15) NOT NULL,
email VARCHAR(40) NOT NULL,
senha VARCHAR(15) NOT NULL,
telefone VARCHAR(11) NOT NULL,
dataNasc DATE NOT NULL,
sexo CHAR(1) NOT NULL,
enderecoID INT NOT NULL ,
FOREIGN KEY (enderecoID) REFERENCES Enderecos (ID),
PRIMARY KEY (ID)
);

CREATE TABLE FuncEscola
(ID INT NOT NULL AUTO_INCREMENT,
pNome VARCHAR(15) NOT NULL,
uNome VARCHAR(15) NOT NULL,
dataNasc DATE NOT NULL,
email VARCHAR(40) NOT NULL,
senha VARCHAR(15) NOT NULL,
telefone VARCHAR(11) NOT NULL,
sexo CHAR(1) NOT NULL,
cargo VARCHAR(15) NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE Alunos
(RA INT NOT NULL AUTO_INCREMENT,
pNome VARCHAR(15) NOT NULL,
uNome VARCHAR(15) NOT NULL,
dataNasc DATE NOT NULL,
sexo CHAR(1) NOT NULL,
respID INT NOT NULL,
FOREIGN KEY (respID) REFERENCES Responsaveis (ID),
PRIMARY KEY (RA)
);

CREATE TABLE InfoEspecialAluno
(
ID INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(30),
conteudo VARCHAR(255),
alunoRA INT NOT NULL,
respID INT NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY (alunoRA) REFERENCES Alunos (RA),
FOREIGN KEY (respID) REFERENCES Responsaveis(ID)
);

CREATE TABLE Notas
(
ID INT NOT NULL AUTO_INCREMENT,
professor VARCHAR (30) NOT NULL,
atividade VARCHAR(255) NOT NULL,
prazo DATE NOT NULL,
pontuacao DECIMAL(2,1) NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE Notificacoes
(
ID INT NOT NULL AUTO_INCREMENT,
conteudo VARCHAR(255) NOT NULL,
dataEnvio DATETIME NOT NULL,
funcID INT NOT NULL,
respID INT NULL,
PRIMARY KEY (ID),
FOREIGN KEY (funcID) REFERENCES FuncEscola (ID),
FOREIGN KEY (respID) REFERENCES Responsaveis (ID)
);

CREATE TABLE Cardapios
(
ID INT NOT NULL AUTO_INCREMENT,
dataEnvio DATE NOT NULL,
itens VARCHAR(255) NOT NULL,
PRIMARY KEY(ID)
);