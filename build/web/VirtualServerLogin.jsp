<%-- 
    Document   : VirtualServerLogin
    Created on : 8 Jan, 2019, 5:44:14 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String uname=request.getParameter("uname");
    session.setAttribute("uname",uname);
    String password=request.getParameter("password");
if(uname.equals("VM1")&&password.equals("VM1"))
{
     %>
                 <script type="text/javascript">
                     window.alert("Virtual Server One  Login Success");
                     window.location="VM.jsp";
                     </script>
                 <%
}
else
if(uname.equals("VM2")&&password.equals("VM2"))
{
     %>
                 <script type="text/javascript">
                     window.alert("Virtual Server Two Login Success");
                     window.location="VM2.jsp";
                     </script>
                 <%
}
else
if(uname.equals("VM3")&&password.equals("VM3"))
{
     %>
                 <script type="text/javascript">
                     window.alert("Virtual Server Three Login Success");
                     window.location="VM3.jsp";
                     </script>
                 <%
}
else

{
     %>
                 <script type="text/javascript">
                     window.alert("Virtual Server  Login Fails");
                     window.location="virtualServers.jsp";
                     </script>
                 <%
}
%>
