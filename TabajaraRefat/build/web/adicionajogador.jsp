
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="./header.jsp" />


<div class="container">
    <div class="jogador">
        
        
        <jsp:useBean id="JGDAO" class="Persistencia.JGDAO"></jsp:useBean>     
        <jsp:useBean id="Jogador" class="Modelos.Jogador" ></jsp:useBean>     
        <jsp:setProperty name="Jogador" property="nome" value="${param.nome}"></jsp:setProperty>
        <jsp:setProperty name="Jogador" property="posicao" value="${param.posicao}"></jsp:setProperty>
        <jsp:setProperty name="Jogador" property="time" value="${param.time}"></jsp:setProperty>
                        
        <c:choose>
            <c:when test="${JGDAO.adicionarJogador(Jogador) eq true}"> 
                <c:set var="jogador" value="${Jogador.nome}" scope="session"  />
           <jsp:forward page="jogador.jsp"></jsp:forward>
            </c:when>
            <c:otherwise>
                Deu xabum
            </c:otherwise>   
        </c:choose>
        
        
        

    </div>
    </div>
<jsp:include page="./footer.jsp" />
