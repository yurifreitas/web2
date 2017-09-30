
<%@include file="./header.jsp" %> 
<jsp:useBean id="AlunoDAO" class="persistencia.AlunoDAO"></jsp:useBean> 
    
    
    <c:choose>
            <c:when test="${AlunoDAO. excluirAluno(Integer.parseInt(param.id)) eq true}"> 
            <jsp:forward page="aluno.jsp"></jsp:forward>
            </c:when>
            <c:otherwise>
                Deu xabum
            </c:otherwise>   
        </c:choose>

<%@include file="./footer.jsp" %>