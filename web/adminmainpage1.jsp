
<!--<html>
<% //out.print( request.getRemoteAddr() ); %>      
<A href="index.jsp">Log Out</a>       
<BR>
<b>
<font face="verdana" size="2">
<table border="1" align ="center" width="60%" cellpadding="10" cellspacing="10"> -->

<html>
    <head>
        <link href="tablecss.css" rel="stylesheet" type="text/css">
<link href="navbar.css" rel="stylesheet" type="text/css">
<style>
    
       body{
                background-image: url('images/time1.jpg');
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
                    alert("Success");
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
    <center>
    <div class="table1" style="margin-top:30px;">
        <table border="1" align ="center" width="60%" cellpadding="10" cellspacing="10" style=" font-size:22px;"> 
    

<tr> <td height="20"> <A href="admincoursedetails.jsp"> Course Details </a></td> 
<td height="20"> <A href="admincourselist.jsp"> Course List </a> </td></tr>
<tr> <td height="20"> <A href="adminsubjects.jsp"> Subject Details </a> </td>
<td height="20"> <A href="adminsubjectlist.jsp"> Subject List </a> </td></tr>
<tr> <td height="20"> <A href="adminstudentdetails.jsp"> Student Details </a></td>
<td height="20"> <A href="adminstudentlist.jsp"> Student List </a> </td></tr>
<tr> <td height="20"> <A href="addexamtime.jsp"> Add Exam Time-Table </a></td>
<td height="20"> <A href="examtimelist.jsp"> View Exam Time-Table </a> </td></tr>
<!--<tr> <td height="20"> <A href="adminstudentdetails.jsp"> Add Faculty Time-Table </a></td>
<td height="20"> <A href="adminstudentlist.jsp"> View Faculty Time-Table </a> </td></tr>-->
<tr> <td height="20"> <A href="admineducation.jsp"> Staff Qualification </a></td>
<td height="20"> <A href="admineducationlist.jsp"> Staff Qualification List </a> </td></tr>
<tr> <td height="20"> <A href="adminemp.jsp"> Staff Details Entry </a></td>
<td height="20"> <A href="adminemplist.jsp"> Staff Details List </a> </td></tr>
<tr> <td height="20"> <A href="addeventtime.jsp"> Add Events Timings </a></td>
<td height="20"> <A href="eventtimelist.jsp"> View Events Timings </a> </td></tr>
<tr> <td height="20"> <A href="adminstaffsubject.jsp"> Staff Subject Allocation </a></td>
<td height="20"> <A href="adminstaffsubjectlist.jsp"> Staff Subject List </a> </td></tr>
<tr> <td height="20"> <A href="adminttgen1.jsp"> Collage TimeTable Generation </a></td>
<td height="20"> <A href="index.jsp"> Logout</a>  </td></tr>

</table>
    </div>
    </center>
