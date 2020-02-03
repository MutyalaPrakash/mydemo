<h3>In success page</h3>
<%

String user=request.getParameter("name");
String login=request.getParameter("login");

%>


welcome <%=user%>
<br>
signed in using <%=login%>