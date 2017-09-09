<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./header.jsp" />

<div class="container">
    <div class="jogador">
        <div class="container">
            <form action="./adicionajogador.jsp" method="post">
                Nome: <input type="text" class="form-control" name="nome" > 
                <br>          
                Posicao: <input type="text" class="form-control" name="posicao">
                <br>
                Time: <input type="text" class="form-control" name="time">
                <br>
                <input type="submit"  class="btn btn-primary btn-block" value="Adicionar"> 
            </form>
        </div>
        <div class="container">

            <h3>Lista de Jogadores</h3><br>
            <table class="table-responsive" border="1">
                <jsp:useBean  id="JGDAO" class="Persistencia.JGDAO" ></jsp:useBean>
             
                  <tr>

                    <td> Id </td> 
                    <td> Nome </td>
                    <td> Posicao </td>
                    <td> Time </td>
                    <td> Excluir </td>
                    <td> Alterar </td>
                </tr>

                    <c:forEach  var="jg" items="${JGDAO.selecionarTodosJ()}">

                    <tr>

                        <td>${jg.id } </td> 
                        <td>${jg.nome } </td>
                        <td>${jg.posicao } </td> 
                        <td>${jg.time } </td> 
                        <td> <a href="./excluijg.jsp?id=${jg.id}"> Excluir </a> </td>
                        <td> <a href="./alterajogador.jsp?id=${jg.id}"> Alterar </a> </td>


                    </tr>
                </c:forEach>
              


      
            </table>
        </div> 

    </div>
</div>
<jsp:include page="./footer.jsp" />