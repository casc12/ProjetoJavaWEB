package br.com.caelum.mvc.logica;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class RemoveContatoLogic implements Logica {
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception{
		long id = Long.parseLong(request.getParameter("id"));
		Contato contato = new Contato();
		contato.setId(id);
		// (procure o contatoDao no código existente)
		//Busca a conexão pendurada na requisição
		Connection connection =(Connection) request.getAttribute("conexao");
		ContatoDao dao = new ContatoDao(connection);
		dao.exclui(contato);
		System.out.println("Excluindo Contato ...");
		return "mvc?logica=ListaContatosLogic";
	}

}
