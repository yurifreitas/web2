<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./header.jsp" />
<div class="container">

            <h3>Lista de Alunos</h3><br>
            <table class="table-responsive" border="1">
                <jsp:useBean  id="AlunoDAO" class="persistencia.AlunoDAO" ></jsp:useBean>
             
                  <tr>

                    <td> Matricula </td> 
                    <td> Nome </td>
                    <td> Excluir </td>
                    <td> Alterar </td>
                </tr>

                <c:forEach  var="aluno" items="${AlunoDAO.selecionarTodosA()}">

                    <tr>

                        <td>${aluno.matricula } </td> 
                        <td>${aluno.nome } </td>
                       
                        <td> <a href="./excluiraluno.jsp?id=${aluno.matricula}"> Excluir </a> </td>
                        <td> <a href="./alteraaluno.jsp?id=${aluno.matricula}"> Alterar </a> </td>


                    </tr>
                </c:forEach>
              


      
            </table>
        </div> 
                <jsp:include page="./footer.jsp" />