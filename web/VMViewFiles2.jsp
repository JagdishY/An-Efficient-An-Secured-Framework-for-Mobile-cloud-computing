<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<% String uname=(String)session.getAttribute("uname");%>
<%@page import="java.sql.*" %>
<%@page import="com.database.DBCon" %>
<%
    try
     {
        Connection con=DBCon.getCon();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from files where status='"+uname+"'");
        %>
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
            <div id="p" style="background-color: white;width:auto;height:auto;margin: 100px;"><br><br>
                <br> <br> <br>
                <center><h2> View  Your Uploaded Files</h2></center>
                <table style="margin:50px; align-content: center; margin-top:0px;border: solid black;margin-bottom: 50px;" cellpadding="10px"  border="1px" align="center">
                    <tr>
                        
                        <th><font style="bold" size="5" color="red">Data</th>
                        <th><font style="bold" size="5" color="red">FileName</th>
                        <th><font style="bold" size="5" color="red">Owner</th>
                        <th><font style="bold" size="5" color="red">Date</th>
                        <th><font style="bold" size="5" color="red">Status</th>
                        
                    </tr>
                
                <%
                while(rs.next())
                {
                %>
                <tr>
                    <td>
                        <textarea rows="5" cols="35"><%=rs.getString(8)%></textarea></td>
                     <td><%=rs.getString(2)%></td>
                      <td><%=rs.getString(6)%></td>
                       <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(11)%></td>
                        
                </tr>
               
                <%
                    }
}
catch(Exception e)
{
out.println(e);
}
%>
      </table>   
            </div>
            </div>
            
            
        </div>
    </body>
</html>
