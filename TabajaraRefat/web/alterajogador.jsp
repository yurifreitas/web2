
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./header.jsp" />
    <jsp:useBean class="Persistencia.JGDAO" id="JGDAO"></jsp:useBean>
    <c:set var="jg" value="${JGDAO.selecionarJogador(Integer.parseInt(param.id))}"> </c:set>                     
<div class="container">
<form action="./alterajg.jsp" method="post">
                            Nome: <input type="text" class="form-control" name="nome" value="${jg.nome}"> 
                            <br>
                            Posicao: <input type="text" class="form-control" name="posicao" value="${jg.posicao}"
                            <br>
                            <br>
                            Time: <input type="text" class="form-control" name="time" value="${jg.time}"
                            <br>
                            <input type="hidden" name="id" value="${jg.id}">
                            <br>

                            <input type="submit" class="btn btn-primary btn-block" value="Alterar">           
                         </form>
                            </div>
                         
                        
                    <jsp:include page="./footer.jsp" />
                        