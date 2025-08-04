<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>



<html>
    <head>
        <link href="tablecss.css" rel="stylesheet" type="text/css">
<link href="navbar.css" rel="stylesheet" type="text/css">
<style>
     body{
                background-image: url('images/stud4.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            } 
</style>
    </head>
<div class="topnav">
    <a  href="index.jsp">Home</a>
    <div style="float: right;">
        <a href="index.jsp">LOGOUT</a>
    </div>
    <%
        String msg = request.getParameter("msg");
        if(msg!=null){
            if(msg.equals("success")){
                %>
                <script>
                    alert(" Success");
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
</div>
    <BR>
    <div class="table1">
<table border="1" align ="center" width="60%" cellpadding="10" cellspacing="10" style=" font-size:22px;"> 
<tr> <td height="40"> <A href="studentprofile.jsp"> My Profile </a> </td>  </tr>
<tr> <td height="40"> <A href="studentstafflist.jsp"> Staff List </a> </td>  </tr>
<tr> <td height="40"> <A href="studenttimetableview.jsp"> College Time Table View </a> </td>  </tr>
<tr> <td height="40"> <A href="studentexamtimetable.jsp"> Exam Time Table View </a> </td>  </tr>
<!--<tr> <td height="40"> <A href="studentstafflist.jsp"> Staff Time Table List </a> </td>  </tr>-->
<!--<tr> <td height="40"> <A href="studenttimetableview.jsp"> Time Table View </a> </td>  </tr>-->
<tr> <td height="40"> <A href="addstudowntime.jsp"> Student Own Time Table  </a> </td>  </tr>
<tr> <td height="40"> <A href="viewstudowntime.jsp"> Student Own Time Table  </a> </td>  </tr> 
<tr> <td  height="40"> <A href="index.jsp"> Logout </a> </td>  </tr>

</table>
        