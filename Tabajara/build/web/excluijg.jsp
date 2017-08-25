<%@page import="Persistencia.JGDAO"%>
<%@include file="./header.jsp" %>
<%
            int id = Integer.parseInt(request.getParameter("id"));
            boolean resultado = new JGDAO().excluirJogador(id);
            if (resultado) {
                response.sendRedirect("./jogador.jsp");
            } else { %>    
        <h1> Xabum </h1>
<% }%> 

<%@include file="./footer.jsp" %>