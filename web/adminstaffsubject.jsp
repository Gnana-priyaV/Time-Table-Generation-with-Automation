<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="connfile.jsp"%>
<link href="formcss.css" rel="stylesheet" type="text/css">
<link href="navbar.css" rel="stylesheet" type="text/css">
<html>

    <style>
    
       body{
                background-image: url('images/time13.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            } 
</style>
<%

String t1=request.getParameter("text1");
String t2=request.getParameter("text2");
String t3=request.getParameter("text3");


if(t2!=null&&t2!=""){ 
stmt.executeUpdate("insert into StaffSubjectTab values('" + t1 + "','" + t2 + "','" + t3 + "','')");
response.sendRedirect("adminstaffsubject.jsp?msg=success");

}

%>


<div class="topnav">
        <a  href="adminmainpage1.jsp">Home</a>
        <div style="float: right;">
            <a href="index.jsp">LOGOUT</a>
        </div>

    </div>
<%
        String msg = request.getParameter("msg");
        if(msg!=null){
            if(msg.equals("success")){
                %>
                <script>
                    alert("Record Added Success");
                </script>
                <%
            }
            else{
                 %>
                <script>
                    alert("Failed");
                </script>
                <%
            }
        }
    %>
    <br>
    <center>
        <div class="table1" style="margin-top: 20px;text-align: center; margin-left:150px; 
    padding:100px 100px;">



<form method="POST"    action="adminstaffsubject.jsp">
<table border="0" width="60%" align="center"> 
   <tr> <td height="60" colspan="2"><hr> </td> </tr> 
                <tr> <td height="20" colspan="2">Staff Subject Details</td> </tr>  
                <tr> <td height="60" colspan="2"><hr> </td> </tr>
<tr> <td height="40"> Course Name  </td> <td> 

<% 
rst=stmt.executeQuery("select coursename from CourseTab order by coursename");
out.println("<select  name=text1 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString("coursename")+ " </option>");
}
out.println("</select>");
%>  
</td> </tr>    

<tr> <td height="40"> Subject Name  </td> <td> 
<% 
rst=stmt.executeQuery("select SubjectName from SubjectTab order by SubjectName");
out.println("<select  name=text2 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString("SubjectName")+ " </option>");
}
out.println("</select>");
%>  
</td> </tr>    

<tr> <td height="40"> Staff Code  </td> <td> 
<% 
rst=stmt.executeQuery("select empcode from empDetTab order by empcode");
out.println("<select  name=text3 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString("empcode")+ " </option>");
}
out.println("</select>");
%>  
</td> </tr>    



<tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Signup" ></td> </tr>       
</table>
</form>
