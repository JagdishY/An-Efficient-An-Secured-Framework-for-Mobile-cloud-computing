<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    
    <head>
        <link href="style.css" rel="stylesheet" type="text/css" />
        <title>An Efficient and Secured Framework for Mobile Cloud Computing</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div id="image">
            <h1><font color="white" style="italic">An Efficient and Secured Framework for Mobile Cloud Computing</font></h1>
             <div class="menu">
             <ul>
                 <li>
                     <a href="User.jsp"> Mobile user</a>
                </li>
                <li>
                     <a href="AllocationManager.jsp">Mobile Manager</a>
                </li>
                 <li>
                     <a href="virtualServers.jsp">virtual Servers</a>
                </li>
                 
                <li>
                     <a href="Admin.jsp">Cloud manager</a>
                </li>
                <li>
                     <a href="index.html">Home</a>
                </li>
            </ul>
           
            
        </div>
        </div>
       
        <div id="content">
            <div id="p" style="background-color: white;width:auto;height:450px;margin: 100px;">
                <br>
                <center><h1 style="text-transform: uppercase;">Mobile User Registration Page</h1></center>
                <table align="center"  cellpadding="10px" cellspacing="10px" >
                    <form name="login" action="UserRegAction.jsp" method="post">
                    <tr>
                        <td><input type="text" name="uname" required="" placeholder="UserName"></td>
                        <td><input type="text" name="email" required="" placeholder="Email Id"></td>
                    </tr>
                      <tr>
                       
                          <td><input type="password" name="password" required="" placeholder="Password"></td>
                         <td><input type="text" name="age" required="" placeholder="Age"></td>
                    </tr>
                    <tr>
                       
                        <td>Gender</td> <td><input type="radio" name="gender" value="male"> Male
  <input type="radio" name="gender" value="female"> Female
  </td>
                    </tr>
                    <tr> <td><input type="text" name="address" required="" placeholder="Address"></td>
                         <td><input type="text" name="pincode" required="" placeholder="Pincode"></td></tr>
                      <tr>
                          <td><input type="Submit" value="Register"></td>
                          <td><a style="font-size: 25px; text-decoration: none;" href="User.jsp">Sign In</a></td>
                    </tr>
                    </form>
                </table>

            </div>
            </div>
            
            
        </div>
    </body>
</html>
