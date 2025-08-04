<%@ include file="connfile.jsp"%>
<%

 String t1=request.getParameter("deval");
 stmt.executeUpdate("delete from empDetTab where empcode='"+t1+"'");
 response.sendRedirect("admincourselist.jsp");
%>