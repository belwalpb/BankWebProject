<!--Homepage for personal user -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        usernamE:: <%= session.getAttribute( "USERNAME" ) %>
        <BR>
        CIN  <%= session.getAttribute( "CIN" ) %></br>
        savingaccount  <%= session.getAttribute( "SAVINGACCOUNT" ) %></br>
        id: <%= session.getId() %>
    </body>
</html>
