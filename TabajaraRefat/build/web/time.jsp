<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./header.jsp"/>
<jsp:useBean class="Modelos.Time" id="tm"></jsp:useBean>

<div class="container">
    <div class="Time">


        <form action="./adiciona.jsp" method="post">
            <label> Nome do Time:</label>
            <input type="text" class="form-control" name="nome" > 
            <br>    

            <input type="submit"  class="btn btn-primary btn-block" value="Adicionar"> 

        </form>
        <div class="container">
            <h3>Lista de Times</h3>
            <br>
            <table class="table-responsive" border="1">
                <tr>
                            
                            <td> Id </td> 
                            <td> Nome </td>
                          
                        </tr>
                <jsp:useBean  id="TMDAO" class="Persistencia.TMDAO" ></jsp:useBean>
              

                    <c:forEach  var="time" items="${TMDAO.selecionarT()}">
                    
                    <tr>
                       
                        <td>${time.id } </td> 
                        <td>${time.nome } </td> 
                        <td> <a href="./excluir.jsp?id=${time.id}"> Excluir </a> </td>
                        <td> <a href="./alteratime.jsp?id=${time.id}"> Alterar </a> </td>


                    </tr>
                </c:forEach>
            </table>


        </div>
    </div>
</div>
<jsp:include page="./footer.jsp" />