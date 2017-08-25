<%@page import="Modelos.Time"%>
<%@page import="Persistencia.TMDAO"%>
<%@include file="./header.jsp" %> 

<% Time time = new TMDAO().selecionarTime(Integer.parseInt(request.getParameter("id")));%>
<form action="./altera.jsp" method="post">
    Nome: <input type="text" name="nome" value="<%=time.getNome()%>"> 
    <br>
    <input type="hidden" name="id" value="<%=time.getId()%>">

    <input type="submit" value="Alterar">           
</form>
<%@include file="./footer.jsp" %>
