<%@ page import="java.util.List" %>
<%@ page import="br.com.alura.gerenciador.servlet.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%-- <% --%>
<!-- //  	List<Empresa> lista = (List<Empresa>)request.getAttribute("empresas"); -->
<%-- %> --%>

<html>
	<body>
		<h2>Empresas Cadastradas</h2>
<!-- 		<h3>Java Standard Taglib</h3> -->
	
			<c:if test="${not empty empresas }">
				<ul>
					<c:forEach items="${empresas}" var="empresa">
						<fmt:formatDate value="${empresa.dataAbertura}" var="dataAbertura" pattern="dd/MM/yyyy"/>
						<li> ${ empresa.nome } - ${ dataAbertura } </li>
					</c:forEach>
				</ul>
			</c:if>
			
			<c:if test="${ empty empresas }">
				Não Existem Empresas Cadastradas
			</c:if>
			
<%--      <c:forEach var="i" begin="1" end="10" step="2"> --%>
<%--        ${i} <br /> --%>
<%--      </c:forEach> --%>
	
<!-- 		<ul> -->
<%-- 		<% --%>
<!-- // 			for (Empresa empresa : lista) { -->
<%--  		%> --%>
<%-- 			<li><%= empresa.getNome()%></li> --%>
<%-- 		<% --%>
<!-- //  			} -->
<%-- 		%> --%>
<!-- 		</ul> -->
	<body>
<html>