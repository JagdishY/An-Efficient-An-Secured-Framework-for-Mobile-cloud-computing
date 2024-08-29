<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<% String username=(String)session.getAttribute("username");%>
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
                     <a href="index.html">logout</a>
                </li>
               
                 <li>
                     <a href="ViewFiles.jsp">View Files</a>
                </li>
                 
                <li>
                     <a href="FileUpload.jsp">File Upload</a>
                </li>
                <li>
                     <a href="UserHome.jsp">Home</a>
                </li>
            </ul>
           
            
        </div>
        </div>
       
        <div id="content">
            <div id="p" style="background-color: white;width:auto;height:450px;margin: 100px;">
                <center><h1>Welcome <font color="blue" size="7"><%=username%></font> </h1></center>
                
                

            </div>
            </div>
            
            
        </div>
    </body>
</html>
