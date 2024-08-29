<%-- 
    Document   : activate
    Created on : 8 Jan, 2019, 5:07:29 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page import="com.database.DBCon" %>
<%
    String uname=request.getParameter("uname");
      String email=request.getParameter("email");
            
    try
     {
        Connection con=DBCon.getCon();
        Statement st=con.createStatement();
       int i=st.executeUpdate("update user set status='DeActivated' where uname='"+uname+"' and email='"+email+"'");
if(i>=0)
{
     %>
                 <script type="text/javascript">
                     window.alert("User DeActivation Completed");
                     window.location="AdminHome.jsp";
                     </script>
                 <%
}
else

{
%>
<script type="text/javascript">
                     window.alert("User DeActivation Fail ");
                     window.location="AdminHome.jsp";
                     </script>
                 <%
}
}
catch(Exception e)
{
out.println(e);
}
%>
