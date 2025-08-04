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
                background-image: url('images/staff4.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            } 
            table{
                padding:10px 10px;
                background-color: #666666;
            }
            table tr td label,table tr td{
                padding:20px 30px;
                color:white;
                font-size: 20px;
            }
            table tr td input{
                height:30px;
                width:200px;
                border-radius: 10px;
            }
        </style>
    </head>
    <body>

        <div class="topnav">
            <a  href="staffmainpage.jsp">Home</a>
            <div style="float: right;">
                <a href="index.jsp">LOGOUT</a>
            </div>

        </div><br>
    <center>

        <%
            String name = (String) session.getAttribute("empcodevar");
            rst = stmt.executeQuery("select * from empdettab where empcode='" + name + "'");
            if (rst.next()) {
                String email = rst.getString("pWord");
                String contact = rst.getString("empName");
                String address = rst.getString("eAdd");
                String MobileNo = rst.getString("MobileNo");
                String eMail = rst.getString("eMail");
        %>

        <h1>Welcome, <%= name%></h1>
        <h1>My Profile</h1>
        <br><br>
        <table border="2">
            <tr>
                <td><label>Name</label></td>
                <td><input type="text" value="<%=name%>" name="empcode"></td>
            </tr>
            <tr>
                <td><label>Password</label></td>
                <td><input type="text" value="<%=email%>" name="pWord"></td>
            </tr>
            <tr>
                <td><label>Contact</label></td>
                <td><input type="text" value="<%=contact%>" name="empName"></td>
            <tr>
                <td><label>Address</label></td>
                <td><input type="text" value="<%=address%>" name="eAdd"></td>
            </tr>
            <tr>
                <td><label>Mobile no</label></td>
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
