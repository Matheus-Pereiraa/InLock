create database InLock;

use InLock;



USE InLock;
GO

CREATE TABLE estudio(
	idEstudio TINYINT PRIMARY KEY IDENTITY,
	nomeEstudio VARCHAR(50) UNIQUE NOT NULL,
);
GO

CREATE TABLE jogos(
	idJogos INT PRIMARY KEY IDENTITY,
	idEstudio TINYINT FOREIGN KEY REFERENCES estudio(idEstudio),
	nomeJogo VARCHAR(240) UNIQUE NOT NULL,
	descricao VARCHAR(240) NOT NULL,
	dataLancamento DATE NOT NULL,
	Custo MONEY NOT NULL,
);
GO

CREATE TABLE tipoUsuario(
	idTipoUsuario SMALLINT PRIMARY KEY IDENTITY,
	tituloUsuario VARCHAR(20) UNIQUE NOT NULL,

);
GO

CREATE TABLE usuario(
	idUsuario INT PRIMARY KEY IDENTITY,
	idTipoUsuario SMALLINT FOREIGN KEY REFERENCES tipoUsuario(idTipoUsuario),
	nome VARCHAR(100) NOT NULL,
	email VARCHAR(256) UNIQUE NOT NULL,
	senha VARCHAR(25) NOT NULL,

);
GO