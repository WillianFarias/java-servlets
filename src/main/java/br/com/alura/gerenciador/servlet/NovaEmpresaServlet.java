package br.com.alura.gerenciador.servlet;

import java.io.IOException;
//import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/novaEmpresa")
public class NovaEmpresaServlet extends HttpServlet {

	private static final long serialVersionUID = 7644940709210710629L;

	protected void /*service ou doGet*/doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("Cadastrando nova Empresa");
		
		String nomeEmpresa = request.getParameter("nome");
		Empresa empresa = new Empresa();
		empresa.setNome(nomeEmpresa);
		
//		PrintWriter out = response.getWriter();
		
		if (nomeEmpresa==null) {
			nomeEmpresa = "";
		}
		
		Banco banco = new Banco();
		banco.adiciona(empresa);
		
		//chamando JSP
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/empresaCadastrada.jsp");
		request.setAttribute("nomeEmpresa", empresa.getNome());
		requestDispatcher.forward(request, response);
		
//		out.println("<html><body>Empresa "+ nomeEmpresa +" cadastrada com sucesso!</body></html>");
	}
}
