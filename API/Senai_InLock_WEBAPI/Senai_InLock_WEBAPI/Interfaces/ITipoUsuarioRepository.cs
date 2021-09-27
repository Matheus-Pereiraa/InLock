using senai_InLock_WebApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_InLock_WebApi.Interfaces
{
    interface ITipoUsuarioRepository
    {
        //Lista todos
        List<TipoUsuarioDomain> ListarTodos();

        //Buscar Por Id
        TipoUsuarioDomain BuscarPorId(int idTipoUsuario);

        //Cadastra um Jogo
        void Cadastrar(TipoUsuarioDomain novoTipoUsuario);

        //Atualizar pelo corpo da requisição
        void AtualizarIdCorpo(TipoUsuarioDomain tipoUsuarioAtualizado);

        //Atualiza por Url
        void AtualizarIdUrl(int idEstudio, TipoUsuarioDomain tipoUsuarioAtualizado);

        //Deleta um Jogo
        void Deletar(int idTipoUsuario);
    }
}