<%@page import="Persistencia.JGDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelos.Jogador"%>
<%@include file="./header.jsp" %>

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
                        <tr>
                            
                            <td> Id </td> 
                            <td> Nome </td>
                            <td> Posicao </td>
                            <td> Time </td>
                            <td> Excluir </td>
                            <td> Alterar </td>
                        </tr>
                        
                        <%      
                            
                            ArrayList<Jogador> vetJogador = new JGDAO().selecionarTodosJ();
                            
                            for (int idx = 0; idx < vetJogador.size(); idx++) {
                            Jogador jogador = vetJogador.get(idx);
                        %>
                        
                         <tr>               
                            <td><%= jogador.getId()%></td> 
                            <td><%= jogador.getNome()%></td>
                            <td><%= jogador.getPosicao()%></td>
                            <td><%= jogador.getTime()%></td>
                            <td> <a href="./excluijg.jsp?id=<%=jogador.getId()%>">Excluir</a></td>
                            <td> <a href="./alterajogador.jsp?id=<%=jogador.getId()%>">Alterar</a></td>

                        </tr>
                        
                        
                        <% } %>
                      </table>
                       </div> 
                      
    </div>
</div>
<%@include file="./footer.jsp" %>