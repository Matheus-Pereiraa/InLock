using senai_InLock_WebApi.Domains;
using System.Collections.Generic;

namespace senai_InLock_WebApi.Interfaces
{
    interface IUsuarioRepository
    {
        //Lista todos os Usuarios
        List<UsuarioDomain> ListarTodos();

        //Valida o Usuário
        UsuarioDomain BuscarPorEmailSenha(string email, string senha);

        //Buscar Por Id
        UsuarioDomain BuscarPorId(int idUsuario);

        //Cadastrar um Usuario
        void Cadastrar(UsuarioDomain novoUsuario);

        //Atualizar pelo corpo da requisição
        void AtualizarIdCorpo(UsuarioDomain usuarioAtualizado);

        //Atualizar por Url
        void AtualizarIdUrl(int idUsuario, UsuarioDomain usuarioAtualizado);

        //Deleta um Usuario
        void Deletar(int idUsuario);
    }
}