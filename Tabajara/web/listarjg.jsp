<%@page import="Persistencia.JGDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelos.Jogador"%>

<%@include file="./header.jsp" %>
                        <h3>Lista de Jogadores</h3><br>
                        <table border="1">
                        <tr>
                            
                            <td> Id </td> 
                            <td> Nome </td>
                            <td> Posicao </td>
                            <td> Time </td>
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
                        </tr>
                        
                        
                        <% } %>
                        </table>
                        <a href="./time.jsp">Voltar Times</a>
                        <%@include file="./footer.jsp" %>