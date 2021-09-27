use InLock


INSERT INTO estudio(nomeEstudio)
VALUES 
		('Riot'),
		('Rockstar'),
		('Activision')

GO

INSERT INTO jogos(idEstudio, nomeJogo, descricao, dataLancamento, custo)
VALUES
		('1', 'Valorant', 'Um jogo do estilo fps', '2077-07-07', '90.00'),
		('2', 'Red Dead Redemption', 'Jogo
eletrônico de ação-aventura western.', '2010-12-13', '30.00')

GO

INSERT INTO tipoUsuario(tituloUsuario)
VALUES
		('Administrador'),
		('Cliente')
GO

INSERT INTO usuario(idTipoUsuario, nome, email, senha)
VALUES
		('1', 'Fernando', 'fernadinho123@admin.com', 'admir'),
		('2', 'Jose', 'Josias7892@cliente.com', 'clientesco')

GO