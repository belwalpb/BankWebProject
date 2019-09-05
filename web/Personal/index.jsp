<!--Homepage for personal user -->

<% 

    String USERNAME=(String)session.getAttribute( "USERNAME" );
    out.println("<a href=\"/login.jsp\">Click</a>");
    
   if(USERNAME==null)
   {
   request.setAttribute("message", "Your Session Has Been Expired. Kindly Login Again.");
    request.getRequestDispatcher("/login.jsp").forward(request, response);
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
        USERNAME:: <%= session.getAttribute( "USERNAME" ) %>
        <BR>
        CIN  <%= session.getAttribute( "CIN" ) %></br>
        savingaccount  <%= session.getAttribute( "SAVINGACCOUNT" ) %></br>
        id: <%= session.getId() %>
    </body>
</html>
