

<%@page import="java.sql.*"%>
<%@page import="com.database.DBCon" %>
<%
	String username=request.getParameter("uname");
	String password=request.getParameter("password");
        
	
	try
	{
	
	Connection con=DBCon.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from user where uname='"+username+"' and password='"+password+"'");
	while(rs.next())
	{
	
            String status=rs.getString(8);
            
            System.out.println(status);
            if(status.equals("Waiting"))
            {
                %>
                <script type="text/javascript">
                    
                    window.alert("You Are Not Yet Activated..!!!");
                    window.location="index.html";
                    </script>
                <%
            
}
 if(status.equals("Activated"))
{
%>
                <script type="text/javascript">
                    
                    window.alert("Login Sucess....!!!");
                    window.location="UserHome.jsp";
                    </script>
                <%
                    session.setAttribute("username",username);
}
else 
if(status.equals("DeActivated"))
{
%>
                <script type="text/javascript">
                    
                    window.alert("Your Account Is InActive Contact Admin....!!!");
                    window.location="index.html";
                    </script>
                <%
}

	

	
	
	else
	{
	%>
                <script type="text/javascript">
                    
                    window.alert("User Name Or Password Incorrect....!!!");
                    window.location="index.html";
                    </script>
                <%
	}
}
}
	catch(Exception e)
	{
	System.out.println(e);
	}
%>