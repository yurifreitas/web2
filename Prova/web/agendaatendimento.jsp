<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./header.jsp" />


<div class="container">
    <div class="jogador">
      
        <jsp:useBean id="AtendimentoDAO" class="persistencia.AtendimentoDAO"></jsp:useBean>     
        <jsp:useBean id="Atendimento" class="modelos.Atendimento" ></jsp:useBean>     
        <jsp:setProperty name="Atendimento" property="dia" value="${param.dia}"></jsp:setProperty>
        <jsp:setProperty name="Atendimento" property="hora_inicio" value="${param.horainicio}"></jsp:setProperty>
        <jsp:setProperty name="Atendimento" property="hora_fim" value="${param.horafim}"></jsp:setProperty>
        <jsp:setProperty name="Atendimento" property="aluno" value="${param.aluno}"></jsp:setProperty>    
        <jsp:setProperty name="Atendimento" property="duvidas" value="${param.duvidas}"></jsp:setProperty>
                    
        <c:choose>
            <c:when test="${AtendimentoDAO.adicionarAtendimento(Atendimento) eq true}"> 
                <c:set var="time" value="${Atendimento.id}" scope="session" />
            <jsp:forward page="time.jsp"></jsp:forward>
            </c:when>
            <c:otherwise>
                Deu xabum
            </c:otherwise>   
        </c:choose>
        
        
                        
    </div>
    </div>
<jsp:include page="./footer.jsp" />
