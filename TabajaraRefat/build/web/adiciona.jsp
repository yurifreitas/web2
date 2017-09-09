<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./header.jsp" />


<div class="container">
    <div class="jogador">
      
        <jsp:useBean id="TMDAO" class="Persistencia.TMDAO"></jsp:useBean>     
        <jsp:useBean id="Time" class="Modelos.Time" ></jsp:useBean>     
        <jsp:setProperty name="Time" property="nome" value="${param.nome}"></jsp:setProperty>
                        
        <c:choose>
            <c:when test="${TMDAO.adicionarTime(Time) eq true}"> 
                <c:set var="time" value="${Time.nome}" scope="session" />
            <jsp:forward page="time.jsp"></jsp:forward>
            </c:when>
            <c:otherwise>
                Deu xabum
            </c:otherwise>   
        </c:choose>
        
        
                        
    </div>
    </div>
<jsp:include page="./footer.jsp" />
