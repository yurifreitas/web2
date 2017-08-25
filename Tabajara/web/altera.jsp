<%@page import="Persistencia.TMDAO"%>
<%@page import="Modelos.Time"%>
<%@include file="./header.jsp" %> 

 <%
                            Time time = new Time();
                            time.setId(Integer.parseInt(request.getParameter("id")));
                            time.setNome(request.getParameter("nome"));
                            boolean resultado = new TMDAO().alterarTime(time);
                            if (resultado) {
                            %>    
                            response.sendRedirect("./time.jsp");           
                            <% } else { %>    
                            <h1> Xabum!! </h1>
                            <% } %> 
                            
<%@include file="./footer.jsp" %>


