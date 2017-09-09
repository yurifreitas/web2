
<%@include file="./header.jsp" %> 
<jsp:useBean id="TMDAO" class="Persistencia.TMDAO"></jsp:useBean> 
    
    
    <c:choose>
            <c:when test="${TMDAO.excluirTime(Integer.parseInt(param.id)) eq true}"> 
            <jsp:forward page="time.jsp"></jsp:forward>
            </c:when>
            <c:otherwise>
                Deu xabum
            </c:otherwise>   
        </c:choose>

<%@include file="./footer.jsp" %>
