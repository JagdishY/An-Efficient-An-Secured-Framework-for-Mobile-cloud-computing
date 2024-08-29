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
if(uname.equals("MobileManager")&&password.equals("MobileManager"))
{
     %>
                 <script type="text/javascript">
                     window.alert("Mobile Manager Login Success");
                     window.location="AllocationManagerHome.jsp";
                     </script>
                 <%
}

else

{
     %>
                 <script type="text/javascript">
                     window.alert("Mobile ManagerLogin  Login Fails");
                     window.location="AllocationManager.jsp";
                     </script>
                 <%
}
%>
