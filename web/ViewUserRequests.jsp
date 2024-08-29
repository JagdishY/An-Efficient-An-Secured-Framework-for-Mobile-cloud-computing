<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<% String username=(String)session.getAttribute("username");%>
<%@page import="java.sql.*" %>
<%@page import="com.database.DBCon" %>
<%
    try
     {
        Connection con=DBCon.getCon();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from files where status='Waiting'");
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
                     <a href="ViewUserRequests.jsp">View UserRequests</a>
                </li>
                <li>
                     <a href="AllocationManagerHome.jsp">Home</a>
                </li>
            </ul>
           
            
        </div>
        </div>
       
        <div id="content">
            <div id="p" style="background-color: white;width:auto;height:auto;margin: 100px;"><br><br>
                <br> <br> <br>
                <center><h2> View  Your Uploaded Files</h2></center>
                <table style="margin:250px; align-content: center; margin-top: 0px;border: solid black;" cellpadding="10px"  border="1px" align="center">
                    <tr>
                        
                       
                        <th><font style="bold" size="5" color="red">FileName</th>
                        <th><font style="bold" size="5" color="red">Owner Name</th>
                        <th><font style="bold" size="5" color="red">Date</th>
                        <th><font style="bold" size="5" color="red">Status</th>
                        <th><font style="bold" size="5" color="red">Action</th>
                        
                    </tr>
                
                <%
                while(rs.next())
                {
                %>
                <tr>
                   
                     <td><%=rs.getString(2)%></td>
                      <td><%=rs.getString(6)%></td>
                       <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(11)%></td>
                        <td><a href="Assign.jsp?filename=<%=rs.getString(2)%>&owner=<%=rs.getString(6)%>"><font size="4">Assign To virtual Servers</a></td>
                        
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
