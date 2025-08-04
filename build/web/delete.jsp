<%@ include file="connfile.jsp"%>
<%

 String t1=request.getParameter("deval");
 stmt.executeUpdate("delete from CourseTab where courseName='"+t1+"'");
 response.sendRedirect("admincourselist.jsp");
%>