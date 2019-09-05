<!--Homepage for personal user -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome <%= session.getAttribute( "FULLNAME" ) %> </title>
    </head>
    <body>
        <h1>Hello World!</h1>
        USERNAME:: <%= session.getAttribute( "USERNAME" ) %>
        <BR>
        EID::  <%= session.getAttribute( "EID" ) %></br>
        FULLNAME::  <%= session.getAttribute( "FULLNAME" ) %></br>
        SESSION ID: <%= session.getId() %>
    </body>
</html>
