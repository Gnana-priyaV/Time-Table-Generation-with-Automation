<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="connfile.jsp"%>



<html>
    <head>
        <style>
            body{
                background-image: url('images/time1.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            } 
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
</style>
    </head>

<div class="topnav">
    <a  href="adminmainpage1.jsp">Home</a>
    <div style="float: right;">
        <a href="index.jsp">LOGOUT</a>
    </div>

</div>
    <center>
<div class="table1" style="margin-top: 150px;text-align: center; margin-left:300px; 
    padding:100px 100px;">
  
</div>
                <table border="1" cellpadding="5" cellspacing="5"> 
                 <h1 style="text-align: center">Staff List</h1>
                    <tr><th> Emp Code</th><th> Emp Name</th><th> Address</th><th> Mobile no</th><th>Email id</th><th> Qualification </th></tr>    
<% 
rst=stmt.executeQuery("select * from empDetTab order by empcode");

while( rst.next())
{
out.println("<tr> <td height=20>"+rst.getString(1)+ " </td><td height=20>"+rst.getString(3)+ " </td><td height=20>"+rst.getString(4)+ " </td><td height=20>"+rst.getString(5)+ " </td><td> " + rst.getString(6)+ "</td><td height=20>"+rst.getString(7)+ " </td><td><a href=empdelete.jsp?deval=" + rst.getString(1)+ ">Delete</a></td></tr>" );
}

%>  
</table>
</div>
    </center>

