<%-- <% --%>
<!-- // 	String nomeEmpresa = (String)request.getAttribute("nomeEmpresa"); -->
<%-- %> --%>

<%-- Empresa <%= nomeEmpresa %> cadastrada com sucesso! --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<body>
		<c:if test="${not empty nomeEmpresa}">
			Empresa ${ nomeEmpresa } cadastrada com sucesso! <%--expression language --%>
		</c:if>
		
		<c:if test=" ${empty nomeEmpresa} ">
			Nenhuma empresa nova cadastrada!
		</c:if>
		
<%-- 		${nomeEmpresa} --%>
		
	</body>
</html>