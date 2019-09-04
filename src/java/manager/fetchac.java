

package manager;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class fetchac extends HttpServlet {

    
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String accountnumber=request.getParameter("acnumber");
        try{  
     Class.forName("com.mysql.jdbc.Driver");  
     Connection con=DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/8qpy6ZalZH","8qpy6ZalZH","evKfSzhcH3"); 
     Statement stmt=con.createStatement(); 
     String sql="";
     ResultSet rs=stmt.executeQuery(sql);  
    if(rs.next()){}
    
        }
   catch(Exception e) {}
    }
}

   