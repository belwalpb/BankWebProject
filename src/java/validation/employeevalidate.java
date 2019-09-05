package validation;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class employeevalidate extends HttpServlet {

   

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
         String username=request.getParameter("username");//fetching username and password from form
        String password=request.getParameter("password");
        System.out.println(username);
        System.out.println(password);
        if(username.equals("")||password.equals(""))
        {  request.setAttribute("message", "Username or Password can't be Blank");                //For Null username and password
           request.getRequestDispatcher("banklogin.jsp").forward(request, response); }
       else
        {
    
        //if username and password is not null--stablishing conn with database 
     try{  
     Class.forName("com.mysql.jdbc.Driver");  //loading driver
     Connection con=DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/fIYWBYa6Ms","fIYWBYa6Ms","UH0orlIc4T"); //establishing connection
     Statement stmt=con.createStatement(); 
     String sql="select * from INTERNALUSERLOGIN where USERNAME=\""+username+"\" and PASSWORD=\""+password+"\"";
     ResultSet rs=stmt.executeQuery(sql);  
    if(rs.next()){    //if the user is found then
       
        String status=rs.getString("STATUS");
        String EID=rs.getString("EID");
        String FULLNAME=rs.getString("FULLNAME");
        
        if(!status.equalsIgnoreCase("active"))
                                                             //if user is registered but not permitted
        {
             request.setAttribute("message", "You Dont Have Permissions To Use This Platform. Kindly Visit Your Branch For More Details");           
           request.getRequestDispatcher("banklogin.jsp").forward(request, response);    
            
        }
        
        else                       //iF THE USER IS A REGISTERED USER AND HAVE PERMISSIONS THEN REDIRECT TO THE USER PAGE AND MAINTAIN SESSION
        {
          HttpSession session = request.getSession();       // create session variable   
         session.setAttribute("USERNAME", username);         //STORING USERNAME IN SESSION
        session.setAttribute("EID",EID);                    //STORING EID IN SESSION
        session.setAttribute("FULLNAME",FULLNAME);  //STORING NAME IN SESSION
         response.sendRedirect("Internal");  

        }
           
           
           
            
    }
    else
    {
      request.setAttribute("message", "Invalid Username or Password");                //If user is not found
           request.getRequestDispatcher("banklogin.jsp").forward(request, response);          
    }
       
 
         rs.close();
         stmt.close();
     con.close();  
       }
     catch(Exception e){ System.out.println(e);}     
            
            
            
            
            
        
        }
        
        
        
        
        
        
    }

   
}
