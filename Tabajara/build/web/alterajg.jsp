<%@page import="Persistencia.JGDAO"%>
<%@page import="Modelos.Jogador"%>
<%@include file="./header.jsp" %>
<%
                            Jogador jogador = new Jogador();
                            jogador.setId(Integer.parseInt(request.getParameter("id")));
                            jogador.setNome(request.getParameter("nome"));
                            jogador.setPosicao(request.getParameter("posicao"));
                            jogador.setTime(Integer.parseInt(request.getParameter("time")));

                            boolean resultado = new JGDAO().alterarJogador(jogador);
                            if (resultado) {
                              
                            response.sendRedirect("./jogador.jsp");          
                            } else { %>    
                            <h1> Xabum!! </h1>
                            <% } %>   
                            
                            
                            
 <%@include file="./footer.jsp" %>