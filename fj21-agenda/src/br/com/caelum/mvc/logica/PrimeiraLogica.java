package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PrimeiraLogica implements Logica{
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("Executa a lógica ...");
		System.out.println("Retornando o nome da página JSP ...");
		return "primeira-logica.jsp";
	}

}
