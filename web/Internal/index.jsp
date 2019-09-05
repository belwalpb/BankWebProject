<!--Homepage for personal user -->

<% 

    String USERNAME=(String)session.getAttribute( "USERNAME" );
    //Session Validating via username iff no username is found  then will redirect to banklogin
                       
   if(USERNAME==null)
   {
   response.sendRedirect("/banklogin.jsp");
   }
    

%>
