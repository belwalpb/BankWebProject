<%  String USERNAME=(String)session.getAttribute( "USERNAME" );
     //Session Validating if no username is found in session then will redirect to login 
   if(USERNAME==null)
   {
   response.sendRedirect("../../banklogin.jsp");
   }
%>