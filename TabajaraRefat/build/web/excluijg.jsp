
<%@include file="./header.jsp" %>


<jsp:useBean id="JGDAO" class="Persistencia.JGDAO"></jsp:useBean> 
    
    
    <c:choose>
            <c:when test="${JGDAO.excluirJogador(Integer.parseInt(param.id)) eq true}"> 
            <jsp:forward page="jogador.jsp"></jsp:forward>
            </c:when>
            <c:otherwise>
                Deu xabum
            </c:otherwise>   
        </c:choose>




<%@include file="./footer.jsp" %>