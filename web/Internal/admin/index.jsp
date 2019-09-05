<%-- 
    Document   : index
    Created on : 5 Sep, 2019, 4:16:55 PM
    Author     : Priyanshu
--%>

<% 

    String USERNAME=(String)session.getAttribute( "USERNAME" );
                                                                     //Session Validating if no username is found in session then will redirect to login
    
   if(USERNAME==null)
   {
   response.sendRedirect("../banklogin.jsp");
   }
    

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
