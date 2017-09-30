
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="./header.jsp" />


<div class="container">
    <div class="jogador">
        
        
        <jsp:useBean id="AlunoDAO" class="persistencia.AlunoDAO"></jsp:useBean>     
        <jsp:useBean id="Aluno" class="modelos.Aluno" ></jsp:useBean>     
        <jsp:setProperty name="Aluno" property="nome" value="${param.nome}"></jsp:setProperty>
      
                        
        <c:choose>
            <c:when test="${AlunoDAO.adicionarAluno(Aluno) eq true}"> 
                <c:set var="aluno" value="${Aluno.nome}" scope="session"  />
           <jsp:forward page="aluno.jsp"></jsp:forward>
            </c:when>
            <c:otherwise>
                Deu xabum
            </c:otherwise>   
        </c:choose>
        
        
        

    </div>
    </div>
<jsp:include page="./footer.jsp" />
