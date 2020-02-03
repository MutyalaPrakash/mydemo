<%@ page import="java.sql.*,javax.servlet.RequestDispatcher" %>

<%
String user=request.getParameter("user");
String pwd=request.getParameter("pwd");

String value=request.getParameter("log");

try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","darlingprabhas");



if(value.equals("login"))
{
	
PreparedStatement pstmt=con.prepareStatement("select * from login where username=? and password=?");

pstmt.setString(1,user);
pstmt.setString(2,pwd);
ResultSet rs=pstmt.executeQuery();
if(rs.next())
{
%>
	
	<h3>In first page</h3>
	<jsp:forward page="second.jsp">
	
	<jsp:param name="name" value="<%= user%>"></jsp:param>
	<jsp:param name="login" value="<%=value%>"></jsp:param>
	</jsp:forward>
	
	
	<%
	
}
else
{
out.println("Invalid login");
%>
<br>
<a href="login.html">Go to Login page</a>



<%
}
}
else if (value.equals("fb_login"))
{
	PreparedStatement pstmt=con.prepareStatement("select * from facebook where username=? and password=?");

	pstmt.setString(1,user);
	pstmt.setString(2,pwd);
	ResultSet rs=pstmt.executeQuery();
	if(rs.next())
	{
	%>
		
		<h3>In first page</h3>
		<jsp:forward page="second.jsp">
		
		<jsp:param name="name" value="<%= user%>"></jsp:param>
		<jsp:param name="login" value="<%=value%>"></jsp:param>
		</jsp:forward>
		
		
		<%
		
	}
	else
	{
	out.println("Invalid login");
	%>
	<br>
	<a href="login.html">Go to Login page</a>



	<%
	}
		
}
else if(value.equals("g_login"))
{
	PreparedStatement pstmt=con.prepareStatement("select * from gmail where username=? and password=?");

	pstmt.setString(1,user);
	pstmt.setString(2,pwd);
	ResultSet rs=pstmt.executeQuery();
	if(rs.next())
	{
	%>
		
		<h3>check login successfully implemented and included</h3>
		<jsp:include page="second.jsp">
		
		<jsp:param name="name" value="<%= user%>"></jsp:param>
		<jsp:param name="login" value="<%=value%>"></jsp:param>
		</jsp:include>
		
		
		<%
		
	}
	else
	{
	out.println("Invalid login");
	%>
	<br>
	<a href="login.html">Go to Login page</a>



	<%
	}
}
}
catch(Exception e)
{
	System.out.println(e);
}
%>