<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="./header.jsp" />

<div class="container">
    <div class="jogador">
        <div class="container">
            <form action="./agendaatendimento.jsp" method="post">
                dia: <input type="text" class="form-control" name="dia" > 
                <br>
                hora inicio: <input type="text" class="form-control" name="horainicio" > 
                <br>  
                hora fim: <input type="text" class="form-control" name="horafim" > 
                <br> 
                duvidas: <input type="text" class="form-control" name="duvidas" > 
                <br>
                Aluno matricula: <input type="text" class="form-control" name="aluno_mat" > 
                <br>   
               
                <input type="submit"  class="btn btn-primary btn-block" value="Adicionar"> 
            </form>
        </div>
        <div class="container">

            <h3>Lista de Atendimentos</h3><br>
            <table class="table-responsive" border="1">
                <jsp:useBean  id="AtendimentoDAO" class="persistencia.AtendimentoDAO" ></jsp:useBean>
             
                  <tr>
                    <td> id </td>
                    <td> dia</td>
                    <td> Hora Inicio </td>
                    <td> Hora Fim </td> 
                    <td> Duvidas </td>
                    <td> Aluno </td>
                    <td> Excluir </td>
                    <td> Alterar </td>
                </tr>

                <c:forEach  var="atendimento" items="${AtendimentoDAO.selecionarAtendimentoT()}">

                    <tr>

                        <td>${atendimento.id } </td> 
                        <td>${atendimento.dia } </td>
                        <td>${atendimento.hora_inicio } </td>   
                        <td>${atendimento.hora_fim } </td>
                        <td>${atendimento.aluno } </td>
                        <td>${atendimento.duvidas } </td>
                       
                        <td> <a href="./excluiratendimento.jsp?id=${atendimento.id}"> Excluir </a> </td>
                        <td> <a href="./alteraatendimento.jsp?id=${atendimento.id}"> Alterar </a> </td>


                    </tr>
                </c:forEach>
              


      
            </table>
        </div> 

    </div>
</div>
<jsp:include page="./footer.jsp" />