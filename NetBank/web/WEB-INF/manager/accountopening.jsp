

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Opening</title>
    </head>
    <body>
        <h1>Account Opening Form:::</h1>
        <form action="accountopeningdo" method="post" enctype="multipart/form-data">
            Type Of account:::
            <input type="radio" name="accounttype" value="saving" checked>Saving Account<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="radio" name="accounttype" value="current">Current Account<br><br>    
        First Name::<input type="text" name="firstname" style="margin:5px"><br>
        Last Name::<input type="text" name="lastname" style="margin:5px"><br>
        Aadhar Card:::<input type="text" name="aadhar" style="margin:5px;"><br>
        Pan Card:::<input type="text" name="pan" style="margin:5px;"><br>
        Father Name:::<input type="text" name="fathername" style="margin:5px;"><br>
        Mother Name:::<input type="text" name="mothername" style="margin:5px;"><br>
        Date Of Birth:::<input type="date" name="dob" style="margin:5px;"><br>
        Mobile Number:::<input type="text" name="mobile" style="margin:5px;"><br>
        Email Id:::<input type="email" name="email" style="margin:5px;"><br>
        Address:::<input type="text" name="address" style="margin:5px;height:10%;"><br>
        Customer Photo:::<input type="file" accept="image/*" name="customerimage" style="margin:5px"><br>
        Customer Signature:::<input type="file" accept="image/*" name="customersign" style="margin:5px"><br>
        <br>
        <input type="submit">
        </form>
    </body>
</html>
