p
<%@ page import="InLab.Record" %>

<% 

Record mybean=(Record)request.getAttribute("bean");

out.println("first value:"+mybean.getFirst()+",<br>");

out.println("second value:"+mybean.getSecond()+",<br>");

out.println("result is:"+mybean.getResult());


%>