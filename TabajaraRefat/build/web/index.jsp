<%-- 
    Document   : index
    Created on : 25/08/2017, 14:59:00
    Author     : yuri freitas
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <jsp:include page="./header.jsp" />
       
            <div class="container">
                <div class="index">
                    <ul class="list-group">
                     <li class="list-group-item">Ultimo time adicionado: <c:out value="${sessionScope.time}" /></li>
                    <li class="list-group-item">Ultimo Jogador adicionado: <c:out value="${sessionScope.jogador}" /></li>
                    </ul>
                    <ul class="list-group">
                        <li class="list-group-item"><a  class="btn btn-primary" href="./time.jsp">Times</a></li>
                        <li class="list-group-item"><a   class="btn btn-primary"href="./jogador.jsp">Jogadores</a></li>
                    </ul>
                    
                </div>
            </div>
       <jsp:include page="./footer.jsp" />
