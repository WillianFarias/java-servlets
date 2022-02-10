<%@ page import="java.util.List" %>
<%@ page import="br.com.alura.gerenciador.servlet.Empresa" %>


<%
	List<Empresa> lista = (List<Empresa>)request.getAttribute("empresas");
%>

<html>
	<body>
		<h2>Empresas Cadastradas</h2>
	
		<ul>
		<%
			for (Empresa empresa : lista) {
		%>
			<li><%= empresa.getNome()%></li>
		<%
			}
		%>
		</ul>
	<body>
<html>