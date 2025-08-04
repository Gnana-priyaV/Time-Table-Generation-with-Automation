<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>


<html>
    <head>
        <style>
               table {
    border-collapse: collapse;
    width: 60%;
}

th, td {
    text-align: center;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
 root { 
    display: block;
}

body {
  margin: 0px;
  padding:0px;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
    margin: 0px;
  padding:0px;
  overflow: hidden;
  background-color: black;
  border-radius: 5px;
}

.topnav a {
    margin: 0px;
  padding:0px;
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
   border-radius: 5px;
}

.topnav a:hover {
   
  background-color: #ddd;
  color: black;
}

.topnav a.active {
    margin: 0px;
  padding:0px;
  background-color: #04AA6D;
  color: white;
}
 body{
                background-image: url('images/time1.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            } 
</style>
    </head>

<div class="topnav">
    <a  href="staffmainpage.jsp">Home</a>
    <div style="float: right;">
        <a href="index.jsp">LOGOUT</a>
    </div>

</div>
    <center>
<div class="table1" style="margin-top: 50px;text-align: center; margin-left:300px; 
    padding:100px 100px;">
  
</div>
                <table border="1" cellpadding="5" cellspacing="5"> 
                    
                    <h1 style="text-align: center">Staff List</h1>
   
    <tr><th> Reg No </th><th> Student Name </th><th> Mobile No </th><th> Course Name </th></tr> 
<% 
rst=stmt.executeQuery("select * from empDetTab order by empcode");

while( rst.next())
{
out.println("<tr> <td height=20>"+rst.getString(1)+ " </td><td height=20>"+rst.getString(3)+ " </td><td height=20>"+rst.getString(4)+ " </td> <td> " + rst.getString(5)+ "</td></tr>" );
}

%>  
</table>

</div></center>
