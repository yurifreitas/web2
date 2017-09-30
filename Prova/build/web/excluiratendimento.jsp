
<%@include file="./header.jsp" %>


<jsp:useBean id="AtendimentoDAO" class="persistencia.AtendimentoDAO"></jsp:useBean> 
    
    
    <c:choose>
            <c:when test="${AtendimentoDAO.excluirAtendimento(Integer.parseInt(param.id)) eq true}"> 
            <jsp:forward page="atendimento.jsp"></jsp:forward>
            </c:when>
            <c:otherwise>
                Deu xabum
            </c:otherwise>   
        </c:choose>




<%@include file="./footer.jsp" %>