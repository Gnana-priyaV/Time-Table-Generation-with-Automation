<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="connfile.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="tablecss.css" rel="stylesheet" type="text/css">
<link href="navbar.css" rel="stylesheet" type="text/css">
        <style>
    
       body{
                background-image: url('images/stud.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            } 
</style>
    </head>
    <body>
                    <div class="topnav">
    <a  href="studentmainpage.jsp">Home</a>
    <div style="float: right;">
        <a href="index.jsp">LOGOUT</a>
    </div>
    
</div><br>
       
         <center>
        <%
            String name = (String)session.getAttribute("svar");
            rst = stmt.executeQuery("select * from studenttab where RegNo='"+name+"'");
            if(rst.next()){
               String password = rst.getString("pWord");
                String contact = rst.getString("StudentName");
                String address = rst.getString("sAdd");
                String MobileNo = rst.getString("MobileNo");
                String eMail = rst.getString("eMail");
                String CourseName = rst.getString("CourseName");
                %>
                
                 <h1>Welcome, <%= name %></h1>
                    <h1>My Profile</h1>
                   <br><br>
                <table>
                    <tr>
                        <td><label>Staff Id</label></td>
                        <td><input type="text" value="<%=name%>" name="RegNo"></td>
                    </tr>
                    <tr>
                        <td><label>Password</label></td>
                        <td><input type="text" value="<%=password%>" name="pWord"></td>
                    </tr>
                    <tr>
                        <td><label>Address</label></td>
                        <td><input type="text" value="<%=address%>" name="sAdd"></td>
                    <tr>
                        <td><label>Mobile No</label></td>
                        <td><input type="text" value="<%=MobileNo%>" name="MobileNo"></td>
                    </tr>
                    <tr>
                        <td><label>Email</label></td>
                        <td><input type="text" value="<%=eMail%>" name="eMail"></td>
                    </tr>
                    
                </table>
                <%
                           }
        %>
    </center>
    </body>
</html>
