<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./header.jsp" />
        <jsp:useBean id="TMDAO" class="Persistencia.TMDAO"></jsp:useBean>     

        <c:set var="time" value="${TMDAO.selecionarTime(Integer.parseInt(param.id))}"> </c:set>    
    
<div class="container" >   
<form action="./altera.jsp" method="post">
        Nome: <input type="text" class="form-control" name="nome" value="${time.nome}"> 
        <br>
        <input type="hidden" name="id" value="${time.id}">


        <input type="submit" class="btn btn-primary " value="Alterar"> 
        <a href="time.jsp" class="btn btn-primary"> voltar </a>

    </form>
</div>
<jsp:include page="./footer.jsp" />
