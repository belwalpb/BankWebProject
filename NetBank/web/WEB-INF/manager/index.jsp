
<html>
    <head>
        <title>Develope This Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1 style="color:green">Manager Home page</h1><br>
        
        A/C Number-
        <form action="fetchac" method="post">
            <input type="textbox" name="acnumber" placeholder="A/C Number">
            <input type="submit" value="Fetch">
        </form><br><br>
        
        CIN-
        <form action="fetchcin" method="post">
            <input type="textbox" name="cin" placeholder="CIN">
            <input type="submit" value="Fetch">
        </form><br><br>
        
        
        
        <a href="accountopening.jsp">Customer Account Opening</a><br>
         <a href="accountdetail">View Account/Customer Details</a><br>
          <a href="transaction">Deposite Or Withdraw Cash</a><br>
           <a href="amounttransfer">Amount Transfer Within Bank</a><br>
           
    </body>
</html>
