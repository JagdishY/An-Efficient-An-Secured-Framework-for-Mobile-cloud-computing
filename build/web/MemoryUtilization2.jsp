<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<% String uname=(String)session.getAttribute("uname");%>
<%@page import="java.sql.*" %>
<%@page import="com.database.DBCon" %>

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
                     <a href="RequestUtilization2.jsp">Requests Utilization</a>
                </li>
                 <li>
                     <a href="MemoryUtilization2.jsp">Memory Utilization</a>
                </li>
                 
                <li>
                     <a href="VMViewFiles2.jsp">View Files</a>
                </li>
                <li>
                     <a href="VM2.jsp">Home</a>
                </li>
            </ul>
            
        </div>
        </div>
       
        <div id="content">
            <div id="p" style="background-color: white;width:auto;height:auto;"><br><br>
             
                <center> <iframe src="Memory2" width="800" height="450" style="border:none;"></iframe></center>
            </div>
            </div>
            
            
        </div>
    </body>
</html>
