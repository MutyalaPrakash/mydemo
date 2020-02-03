
<%@ page import="PostLab.User" %>

<% 

User mybean=(User)request.getAttribute("bean");

out.println("name:"+mybean.getName()+",<br>");

out.println("password:"+mybean.getPassword()+",<br>");

out.println("email:"+mybean.getEmail());


%>