<%@page import="Persistencia.TMDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelos.Time"%>
<%@include file="./header.jsp" %>
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
                    <td> Time </td>
                    <td> Excluir </td>
                    <td> Alterar </td>
                    <td> Lista de Jogadores </td>
                </tr>

                <%

                    ArrayList<Time> vett = new TMDAO().selecionarT();

                    for (int i = 0; i < vett.size(); i++) {
                        Time time = vett.get(i);
                %>

                <tr>               
                    <td><%= time.getId()%></td> 
                    <td><%= time.getNome()%></td>
                    <td> <a href="./excluir.jsp?id=<%=time.getId()%>">Excluir</a></td>
                    <td> <a href="./alteratime.jsp?id=<%=time.getId()%>">Alterar</a></td>
                    <td> <a href="./listarjg.jsp?id=<%=time.getId()%>">Lista de Jogadores</a></td>
                

                </tr>


                <% }%>
            </table>
            
     
       
</div>
    </div>
</div>
<%@include file="./footer.jsp" %>