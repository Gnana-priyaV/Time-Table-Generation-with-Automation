

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="headfile.jsp"%>
<%
new Thread(new timer.Alarm()).start();
%>
<!--
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online TimeTable Generation</title>
    </head>
    <body background="images/back2.bmp">
        <BR><BR>
    <center>
        <table border="0" width="100%" align="center">
               <tr><td width="40%" >
        <h1>Welcome to our Site</h1>
        <h1></h1>
        <h4><A href="mainpage.jsp"> Click here to continue...... </a></h4>
                </td>
                <td width="60%" align="right"> <img src="images/pic1.JPG"></td> </tr>
        </table>
    </center>
    </body>
</html>-->
<%@ include file="footerfile.jsp"%>--%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="navbar.css" rel="stylesheet" type="text/css">
<style>
     
            body{
                background-image: url(https://1.bp.blogspot.com/-TtlrJj6dDUM/WXWPd145E3I/AAAAAAAAlbc/0owXAO51ehUTUejCsDOUETjtgWXjAlNEACLcBGAs/s1600/University%2Bof%2BOxford%2B3.jpg);
                background-repeat: no-repeat;
                background-size: cover;
            }
            .btn{
  color:#999;
  background:rgba(0, 0, 0, 0.5);
  padding:10px 30px;
  font-size:12px;
  text-decoration:none;
  letter-spacing:2px;
  text-transform:uppercase;
}

.btn:hover{
  border:none;
  background:rgba(0, 0, 0, 0.4);
  background:white;
/*  padding:20px 20px;*/
  color:#1b1b1b;
}

</style>
</head>
<body>

<div class="topnav">
  <a  href="index.jsp" class= "btn">Home</a>
  <a href="adminlogin.jsp" class= "btn">ADMIN LOGIN</a>
  <a href="stafflogin.jsp" class= "btn">STAFF LOGIN</a>
  <a href="studentlogin.jsp" class= "btn">USER LOGIN</a>
</div>

<div style="width:100%;text-align: center;justify-content:center;">
  <center><h2 style="outline: none; margin-top: 270px;caret-color: #d9534f; font-size: 80px; color: whitesmoke;width: fit-content;padding: 2px;">Time Table Management System</h2>
 
 
</div>

</body>
</html>





















