package manager;

import java.io.PrintWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@MultipartConfig(maxFileSize = 16177215)

public class accountopeningdo extends HttpServlet {

   private Connection getConnection() {
        Connection conn = null;
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn=DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/8qpy6ZalZH","8qpy6ZalZH","evKfSzhcH3");
        } catch (Exception e) {
           
            throw new RuntimeException("Failed to obtain database connection.", e);
        }
        return conn;
    }

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException{
        
            
            String firstname=request.getParameter("firstname");
            String lastname=request.getParameter("lastname");
            String aadhar=request.getParameter("aadhar");
            String pan=request.getParameter("pan");
            String fathername=request.getParameter("fathername");
            String mothername=request.getParameter("mothername");
            String dob=request.getParameter("dob");
            String mobilenumber=request.getParameter("mobile");
            String emailid=request.getParameter("email");
            String address=request.getParameter("address");
           
            InputStream inputStream = null;
            Part customerimage = request.getPart("customerimage");
           if (customerimage != null) {
            // prints out some information for debugging
            System.out.println(customerimage.getName());
            System.out.println(customerimage.getSize());
            System.out.println(customerimage.getContentType());
            inputStream = customerimage.getInputStream();
        }
           Connection conn = null; // connection to the database
        String message = null; // message will be sent back to client
        try {
            // connects to the database
            conn = getConnection();
            // constructs SQL statement
            String sql = "INSERT INTO cin (fname,lname,dob,aadhar,pan,image,sign,mobilenumber,email,address,status) values (?,?,?,?,?,?,?,?,?,?,?)";
            //Using a PreparedStatement to save the file
            PreparedStatement pstmtSave = conn.prepareStatement(sql);
            pstmtSave.setString(1,firstname);
            pstmtSave.setString(2,lastname);
            pstmtSave.setString(3,dob);
            pstmtSave.setString(4,aadhar);
            pstmtSave.setString(5,pan);
            if (inputStream != null) {
                //files are treated as BLOB objects in database
                //here we're letting the JDBC driver
                //create a blob object based on the
                //input stream that contains the data of the file
                pstmtSave.setBlob(6, inputStream);
            }

            inputStream = null;
             Part customersign = request.getPart("customersign");
             if (customersign != null) {
            inputStream = customersign.getInputStream(); }
         if (inputStream != null) {
                //files are treated as BLOB objects in database
                //here we're letting the JDBC driver
                //create a blob object based on the
                //input stream that contains the data of the file
            pstmtSave.setBlob(7, inputStream); }
          pstmtSave.setString(8,mobilenumber);
           pstmtSave.setString(9,emailid);
            pstmtSave.setString(10,address);
             pstmtSave.setString(11,"active");
             int row = pstmtSave.executeUpdate();
             if (row > 0) {
                message = "File uploaded and saved into database";
            }
             }
              catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } 
        PrintWriter out = response.getWriter();
        out.println(message);
            
    }

   

}
