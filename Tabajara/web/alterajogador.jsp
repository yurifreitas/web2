   <%@page import="Persistencia.JGDAO"%>
<%@page import="Modelos.Jogador"%>
<%@page import="Persistencia.TMDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelos.Time"%>
<%@include file="./header.jsp" %>
<% Jogador jogador = new JGDAO().selecionarJogador(Integer.parseInt(request.getParameter("id"))); %>
                        <form action="./alterajg.jsp" method="post">
                            Nome: <input type="text" name="nome" value="<%=jogador.getNome()%>"> 
                            <br>
                            Posicao: <input type="text" name="posicao" value="<%=jogador.getPosicao()%>"
                            <br>
                            Time: <input type="text" name="time" value="<%=jogador.getTime()%>"
                            <br>
                            <input type="hidden" name="id" value="<%=jogador.getId()%>">

                            <input type="submit" value="Alterar">           
                         </form>
                            
                            <hr>
                        <h3>Lista de Times</h3><br>
                        <table border="1">
                        <tr>
                            
                            <td> Id </td> 
                            <td> Time </td>
                        </tr>
                        
                        <%      
                            
                            ArrayList<Time> vetTime = new TMDAO().selecionarT();
                            
                            for (int idx = 0; idx < vetTime.size(); idx++) {
                            Time time = vetTime.get(idx);
                        %>
                        
                         <tr>               
                            <td><%= time.getId()%></td> 
                            <td><%= time.getNome()%></td>

                        </tr>
                        
                        
                        <% } %>
                        </table>
                        
                        <%@include file="./footer.jsp" %>
                        