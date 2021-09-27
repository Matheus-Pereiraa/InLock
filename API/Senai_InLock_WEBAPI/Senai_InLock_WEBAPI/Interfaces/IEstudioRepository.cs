using senai_InLock_WebApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_InLock_WebApi.Interfaces
{
    interface IEstudioRepository
    {
        //Lista os Estudios
        List<EstudioDomain> ListarTodos();

        //Buscar Por Id
        EstudioDomain BuscarPorId(int idEstudio);

        //Cadastra um Game
        void Cadastrar(EstudioDomain novoEstudio);

        //Atualizar pelo corpo da requisição
        void AtualizarIdCorpo(EstudioDomain estudioAtualizado);

        //Atualiza pela Url
        void AtualizarIdUrl(int idEstudio, EstudioDomain estudioAtualizado);

        //Deleta um Jogo
        void Deletar(int idEstudio);
    }
}