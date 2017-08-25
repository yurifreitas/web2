<%@page import="Persistencia.TMDAO"%>
<%@include file="./header.jsp" %> 

<%
            int id = Integer.parseInt(request.getParameter("id"));
            boolean resultado = new TMDAO().excluirTime(id);
            if (resultado) {
                response.sendRedirect("./time.jsp");
            } else { %>    
        <h1> erro</h1>
<% }%> 
<%@include file="./footer.jsp" %>
