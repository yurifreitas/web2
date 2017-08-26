<%@page import="Modelos.Time"%>
<%@page import="Persistencia.TMDAO"%>
<%@include file="./header.jsp" %> 

<% Time time = new TMDAO().selecionarTime(Integer.parseInt(request.getParameter("id")));%>
    
<div class="container" >   
<form action="./altera.jsp" method="post">
        Nome: <input type="text" class="form-control" name="nome" value="<%=time.getNome()%>"> 
        <br>
        <input type="hidden" name="id" value="<%=time.getId()%>">


        <input type="submit" class="btn btn-primary " value="Alterar"> 
        <a href="time.jsp" class="btn btn-primary"> voltar </a>

    </form>
</div>
<%@include file="./footer.jsp" %>
