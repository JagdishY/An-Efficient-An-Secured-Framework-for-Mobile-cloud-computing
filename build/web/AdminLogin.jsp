<%-- 
    Document   : adminlogin1
    Created on : 29 Dec, 2018, 11:15:47 AM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String uname=request.getParameter("uname");
    String password=request.getParameter("password");
    session.setAttribute("uname",uname);
    if(uname.equals("Cloud")&&password.equals("Cloud"))
{
    %>
    <script type="text/javascript">
        window.alert("Cloud Login Sucess");
        window.location="AdminHome.jsp";
        </script>
        <%
}

else
{
%>
    <script type="text/javascript">
        window.alert("Admin Login Fail");
        window.location="Admin.jsp";
        </script>
        <%
}
%>