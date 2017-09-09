
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./header.jsp" />
         <jsp:useBean id="jogador" class="Modelos.Jogador"></jsp:useBean>
                        <jsp:setProperty property="*" name="jogador"></jsp:setProperty>
                        <jsp:useBean id="dao" class="Persistencia.JGDAO"></jsp:useBean>
                        <c:out value="${dao.alterarJogador(jogador)}"></c:out>  
                       
            <jsp:forward page="jogador.jsp"></jsp:forward>
       
                            
                            
                            
<jsp:include page="./footer.jsp" />