

package validation;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class validate extends HttpServlet {

   
  
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
        
         request.setAttribute("message", "Invalid Try Again");
           request.getRequestDispatcher("login.jsp").forward(request, response);
    }



}
