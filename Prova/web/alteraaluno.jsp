
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./header.jsp" />
    <jsp:useBean class="persistencia.AlunoDAO" id="AlunoDAO"></jsp:useBean>
    <c:set var="aluno" value="${AlunoDAO.selecionarAluno(Integer.parseInt(param.id))}"> </c:set>                     
<div class="container">
<form action="./alteraal.jsp" method="post">
                            Nome: <input type="text" class="form-control" name="nome" value="${aluno.nome}"> 
                            <br>
                        <input type="hidden" name="matricula" value="${aluno.matricula}">
                            <br>

                            <input type="submit" class="btn btn-primary btn-block" value="Alterar">
                           
                         </form>
                            </div>
                        
                    <jsp:include page="./footer.jsp" />
                        