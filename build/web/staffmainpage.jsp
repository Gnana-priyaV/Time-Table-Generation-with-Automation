<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>


<html>
    <head>
        <link href="tablecss.css" rel="stylesheet" type="text/css">
<link href="navbar.css" rel="stylesheet" type="text/css">
    <style>
    
       body{
                background-image: url('images/staff3.jpg');
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
    <div class="table1">
        <table border="1" align ="center" width="60%" cellpadding="10" cellspacing="10" style=" font-size:22px;"> 
<tr> <td><A href="staffprofile.jsp">My Profile </a></td>  </tr>   
<tr> <td > <A href="stafflist.jsp"> Staff List </a></td>  </tr>
<tr> <td> <A href="staffttgenerator.jsp"> Collage Time Table </a></td>  </tr>
<tr> <td> <A href="staffeventlist.jsp"> Event Time List </a></td>  </tr>
<tr> <td> <A href="staffexamtimelist.jsp"> Exam Time Table </a></td>  </tr>
<tr> <td> <A href="staffchangepassword.jsp"> Change Password </a> </td> </tr>
<tr> <td> <A href="index.jsp"> Logout </a> </td>  </tr>
            
</table>
    </div>       
</html>
