
<jsp:include page="./header.jsp" />
   
    


            <jsp:useBean id="Time" class="Modelos.Time"></jsp:useBean>
                        <jsp:setProperty property="*" name="Time"></jsp:setProperty>
                        <jsp:useBean id="TMDAO" class="Persistencia.TMDAO"></jsp:useBean>
                        <c:out value="${TMDAO.alterarTime(Time)}"></c:out>  
                       
               <jsp:forward page="time.jsp"></jsp:forward>
       
                 
                            
<jsp:include page="./footer.jsp" />


