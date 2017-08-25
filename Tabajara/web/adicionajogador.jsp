<%@page import="Persistencia.JGDAO"%>
<%@page import="Modelos.Jogador"%>


<%@include file="./header.jsp" %>
<div class="container">
    <div class="jogador">
         <%
                               Jogador jogador = new Jogador();
                               jogador.setNome(request.getParameter("nome"));
                               jogador.setPosicao(request.getParameter("posicao"));
                               jogador.setTime(Integer.valueOf(request.getParameter("time")));

                               boolean resultado = new JGDAO().adicionarJogador(jogador);
                               if (resultado) {
                                
                            response.sendRedirect("./jogador.jsp");           
                             } else { %>    
                            <h1> Xabum! </h1>
                            <% } %>  
                        
                        
    </div>
    </div>
 <%@include file="./footer.jsp" %>
