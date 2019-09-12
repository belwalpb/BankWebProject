<%-- 
    Document   : logout
    Created on : 11 Sep, 2019, 5:24:05 PM
    Author     : Priyanshu
--%>

<%
   
    session.invalidate();
    
    
  %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Successful</title>
    </head>
    <body>
        <h1>You Have Been Successfully Logged Out</h1></br>
        <h1><a href="../../banklogin.jsp">Click Here To Login Again</a></h1>
    </body>
</html>
