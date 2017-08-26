   <%@page import="Persistencia.JGDAO"%>
<%@page import="Modelos.Jogador"%>
<%@page import="Persistencia.TMDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelos.Time"%>
<%@include file="./header.jsp" %>
<% Jogador jogador = new JGDAO().selecionarJogador(Integer.parseInt(request.getParameter("id"))); %>
                        
<div class="container">
<form action="./alterajg.jsp" method="post">
                            Nome: <input type="text" class="form-control" name="nome" value="<%=jogador.getNome()%>"> 
                            <br>
                            Posicao: <input type="text" class="form-control" name="posicao" value="<%=jogador.getPosicao()%>"
                            <br>
                            <br>
                            Time: <input type="text" class="form-control" name="time" value="<%=jogador.getTime()%>"
                            <br>
                            <input type="hidden" name="id" value="<%=jogador.getId()%>">
                            <br>

                            <input type="submit" class="btn btn-primary btn-block" value="Alterar">           
                         </form>
                            </div>
                            <div class="container">
                            
                            <hr>
                        <h3>Lista de Times</h3><br>
                        <table class="table-responsive"  border="1">
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
                            </div>
                        
                        <%@include file="./footer.jsp" %>
                        