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
                        <li class="list-group-item">Ultimo atendimento adicionado: <h1><c:out value="${sessionScope.atendimento}" /></h1></li>
                    <li class="list-group-item">Ultimo aluno adicionado: <h1><c:out value="${sessionScope.aluno}" /></h1></li>
                    </ul>
                    <ul class="list-group">
                       
                    <li class="list-group-item" ><a  class="btn btn-primary"  href="index.jsp">Home</a></li>
                    <li class="list-group-item" ><a  class="btn btn-primary"  href="./aluno.jsp">Cadastrar Aluno</a></li>
                    <li class="list-group-item"><a  class="btn btn-primary"  href="./listaralunos.jsp">Listar Alunos</a></li>
                    <li class="list-group-item"><a  class="btn btn-primary"  href="./atendimento.jsp">Atendimento </a></li>
                    <li class="list-group-item"><a class="btn btn-primary"  href="./listaratendimento.jsp">Listar Atendimentos</a></li>
                        
                    </ul>
                    
                </div>
            </div>
       <jsp:include page="./footer.jsp" />
