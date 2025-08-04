

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<%
		String t1=request.getParameter("text1");
		String t2=request.getParameter("text2");
		//stmt.executeUpdate("insert into books_details(book_name,author) values('"+bookname+"','"+author+"')");
		rst=stmt.executeQuery("select * from adminlogintab where uName= '" + t1 + "' and pWord='" + t2 + "'");
		
                if (rst.next())
                {out.println("Login Successful");
                response.sendRedirect("adminmainpage1.jsp?msg=success");
                 }
                else{
                    
                     response.sendRedirect("adminlogin.jsp?msg=failed");
                               }
                
               

%>

