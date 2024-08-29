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
        ResultSet rs=st.executeQuery("select * from user where status='Waiting' or  status='DeActivated' ");
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
                     <a href="ViewVirtualServers.jsp">View Virtual Servers</a>
                </li>
                 <li>
                     <a href="DeActivateUsers.jsp">DeActivate User</a>
                </li>
                 
                <li>
                     <a href="ViewUsers.jsp">Activate User</a>
                </li>
                <li>
                     <a href="AdminHome.jsp">Home</a>
                </li>
            </ul>
           
            
        </div>
        </div>
       
        <div id="content">
            <div id="p" style="background-color: white;width:auto;height:450px;margin: 100px;">
                <br> <br> <br>
                
                <table style="margin:50px; align-content: center; margin-top: 0px;border: solid black;" cellpadding="10px"  border="1px" align="center">
                    <tr>
                        <th><font style="bold" size="5" color="red">
                         Username
                        </th>
                        <th><font style="bold" size="5" color="red">Email Id</th>
                        <th><font style="bold" size="5" color="red">Age</th>
                        <th><font style="bold" size="5" color="red">Gender</th>
                        <th><font style="bold" size="5" color="red">Address</th>
                        <th><font style="bold" size="5" color="red">PINCODE</th>
                        <th><font style="bold" size="5" color="red">Status</th>
                        <th><font style="bold" size="5" color="red">Action</th>
                    </tr>
                
                <%
                while(rs.next())
                {
                %>
                <tr>
                    <td><%=rs.getString(1)%></td>
                     <td><%=rs.getString(2)%></td>
                      <td><%=rs.getString(4)%></td>
                       <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(6)%></td>
                        <td><%=rs.getString(7)%></td>
                        <td><font style="bold" size="5" color="Blue"><%=rs.getString(8)%></td>
                        <td><a href="activate.jsp?uname=<%=rs.getString(1)%>&email=<%=rs.getString(2)%>"><font style="bold" size="5" color="green">Activate</font></a></td>
                        
                </tr>
               
                <%
                    }
}
catch(Exception e)
{
out.println(e);
}
%>
      </table>       </div>
            
            
        </div>
    </body>
</html>
