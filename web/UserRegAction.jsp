<%-- 
    Document   : UserRegAction
    Created on : 8 Jan, 2019, 3:59:32 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page import="com.database.DBCon" %>
<%
    String uname=request.getParameter("uname");
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    String age=request.getParameter("age");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String pincode=request.getParameter("pincode");
    String status="Waiting";
    
     try
     {
        Connection con=DBCon.getCon();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select count(*) from user where uname='"+uname+"'");
        while(rs.next())
        {
            int count=rs.getInt(1);
            if(count==0)
            {
               int i=st.executeUpdate("insert into user values('"+uname+"','"+email+"','"+password+"','"+age+"','"+gender+"','"+address+"','"+pincode+"','"+status+"')");
               if(i>0)
               {
                 %>
                 <script type="text/javascript">
                     window.alert("Reister Completed");
                     window.location="User.jsp";
                     </script>
                 <%
               }
else
{
%>
                 <script type="text/javascript">
                     window.alert("Reister Fail");
                     window.location="User.jsp";
                     </script>
                 <%
}
            }
else
{
%>
                 <script type="text/javascript">
                     window.alert("User Name Already Exists");
                     window.location="User.jsp";
                     </script>
                 <%
}
        }
        
     }
    catch(Exception e)
    {
        
    }

%>