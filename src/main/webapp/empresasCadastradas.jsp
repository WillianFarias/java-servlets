<%@ page import="java.util.List" %>
<%@ page import="br.com.alura.gerenciador.servlet.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	List<Empresa> lista = (List<Empresa>)request.getAttribute("empresas");
%>

<html>
	<body>
		<h2>Empresas Cadastradas</h2>
		<h3>Java Standard Taglib</h3>
	
			
			<c:if test="${not empty empresas} ">
				<ul>
					<c:forEach items="${empresas}" var="empresa">
						<li> ${ empresa.nome } </li>
					</c:forEach>			
				</ul>
			</c:if>
			
			<c:if test="${ empty empresas }">
				Não Existem Empresas Cadastradas
			</c:if>
	
<!-- 		<ul> -->
<%-- 		<% --%>
<!-- // 			for (Empresa empresa : lista) { -->
<%-- 		%> --%>
<%-- 			<li><%= empresa.getNome()%></li> --%>
<%-- 		<% --%>
<!-- // 			} -->
<%-- 		%> --%>
<!-- 		</ul> -->
	<body>
<html>