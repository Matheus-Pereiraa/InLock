﻿using senai_InLock_WebApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_InLock_WebApi.Interfaces
{
    interface IJogoRepository
    {
        //Lista todos os Jogos
        List<JogoDomain> ListarTodos();

        //Buscar Pelo Id
        JogoDomain BuscarPorId(int idJogo);

        //Cadastrar um Jogo
        void Cadastrar(JogoDomain novoJogo);

        //Atualizar pelo corpo da requisição
        void AtualizarIdCorpo(JogoDomain jogoAtualizado);

        //Atualiza pela Url
        void AtualizarIdUrl(int idJogo, JogoDomain jogoAtualizado);

        //Deleta um Jogo
        void Deletar(int idJogo);
    }
}