use InLock


--Listar todos os est�dios
SELECT * FROM estudio
GO
--Listar todos os jogos
SELECT * FROM jogos
GO
--Listar todos os usu�rios
SELECT * FROM usuario
GO
--Listar todos os jogos e seus respectivos est�dios;
SELECT nomeJogo, nomeEstudio FROM jogos
INNER JOIN estudio e
ON jogos.idEstudio = e.idEstudio
--Buscar e trazer na lista todos os est�dios com os respectivos jogos. Obs.: Listar
--todos os est�dios mesmo que eles n�o contenham nenhum jogo de refer�ncia;
SELECT nomeEstudio, nomeJogo FROM estudio
LEFT JOIN jogos j
ON estudio.idEstudio = j.idEstudio
--Buscar um usu�rio por e-mail e senha
SELECT nome, email, senha FROM usuario
WHERE email = 'admin@admin.com' AND senha = 'admin'

SELECT nome, email, senha FROM usuario
WHERE email = 'cliente@cliente.com' AND senha = 'cliente'
--Buscar um jogo por idJogo
SELECT idJogos, nomeJogo FROM jogos
WHERE idJogos = '1'

SELECT idJogos, nomeJogo FROM jogos
WHERE idJogos = '2'
--Buscar um est�dio por idEstudio
SELECT * FROM estudio
WHERE idEstudio = '1'

SELECT * FROM estudio
WHERE idEstudio = '2'

SELECT * FROM estudio
WHERE idEstudio = '3'

SELECT idUsuario, nome, email, senha, tu.idTipoUsuario, tituloUsuario FROM usuario INNER JOIN                               tipoUsuario tu 
                                        ON usuario.idTipoUsuario = tu.idTipoUsuario
	                                    WHERE email  = 'admin@admin.com'
	                                    AND senha = 'admin'
										Go