<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./header.jsp" />
   
    


            <jsp:useBean id="Aluno" class="modelos.Aluno"></jsp:useBean>
                        <jsp:setProperty property="*" name="Aluno"></jsp:setProperty>
                        <jsp:useBean id="AlunoDAO" class="persistencia.AlunoDAO"></jsp:useBean>
                        <c:out value="${AlunoDAO.alterarAluno(Aluno)}"></c:out>  
                       
               <jsp:forward page="aluno.jsp"></jsp:forward>
       
                 
                            
<jsp:include page="./footer.jsp" />