<%@page import="Persistencia.JGDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelos.Jogador"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./header.jsp"/>
 <div class="container">

            <h3>Lista de Jogadores</h3><br>
            <table class="table-responsive" border="1">
                <jsp:useBean  id="JGDAO" class="Persistencia.JGDAO" ></jsp:useBean>
             
                  <tr>

                    <td> Id </td> 
                    <td> Nome </td>
                    <td> Posicao </td>
                    <td> Time </td>
                 
                </tr>

                    <c:forEach  var="jg" items="${JGDAO.selecionarTodosJ()}">

                    <tr>

                        <td>${jg.id } </td> 
                        <td>${jg.nome } </td>
                        <td>${jg.posicao } </td> 
                        <td>${jg.time } </td> 


                    </tr>
                </c:forEach>
              


      
            </table>
        
                        <BR>
                        <a href="./time.jsp" class="btn btn-primary">Voltar para Times</a>
                        </div>
 <jsp:include page="./footer.jsp" />