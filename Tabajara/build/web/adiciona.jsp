<%@page import="Persistencia.TMDAO"%>
<%@page import="Modelos.Time"%>

<%@include file="./header.jsp" %>
<div class="container">
    <div class="jogador">
 <%
                            Time time = new Time();
                            time.setNome(request.getParameter("nome"));
                            
                            boolean resultado = new TMDAO().adicionarTime(time);
                            if (resultado) {
                                
                             
                               response.sendRedirect("./time.jsp");  
                                
                        
                        }
                            else { %>    
                                <h1> Xabum! </h1>
                        <% } %> 
                        
                        
    </div>
    </div>
 <%@include file="./footer.jsp" %>
