
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>

<link href="formcss.css" rel="stylesheet" type="text/css">
<link href="navbar.css" rel="stylesheet" type="text/css">
<html>
    <style>
    
       body{
                background-image: url('images/time9.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            } 
</style>
<script language="javascript">
function Validate()
{
var x= document.form1.text2.value;
if (x.length<=0)
{
alert("Please enter the RegNo");
return false;
}




y = document.form1.text5.value;
if(isNaN(y)||y.indexOf(" ")!=-1)
{
alert("Enter numeric value")
return false; 
}
if (y.length!=10)
{
alert("enter 10 characters");
return false;
}


var emailID = document.form1.text6.value;
atpos = emailID.indexOf("@");
dotpos = emailID.lastIndexOf(".");
if (atpos < 1 || ( dotpos - atpos < 2 )) 
{
alert("Please enter correct email ID")
return false;
}

}
</script>


<%
String t2=request.getParameter("text2");
String t3=request.getParameter("text3");
String t4=request.getParameter("text4");
String t5=request.getParameter("text5");
String t6=request.getParameter("text6");
String t7=request.getParameter("text7");



if(t2!=null&&t2!=""){
stmt.executeUpdate("insert into StudentTab values('" + t2 + "','abcd','" + t3 + "','" + t4 + "','" + t5 + "','" + t6 + "','" + t7 + "')");
response.sendRedirect("adminstudentdetails.jsp?msg=success");
}

%>



<div class="topnav">
        <a  href="adminmainpage1.jsp">Home</a>
        <div style="float: right;">
            <a href="index.jsp">LOGOUT</a>
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
    </div>
    <br>
    <center>
        <div class="table1" style="margin-top: 20px;text-align: center; margin-left:150px; 
    padding:100px 100px;">

<form method="POST"  name="form1"  action="adminstudentdetails.jsp">
<table border="0"> 
<tr> <td height="60" colspan="2"><hr> </td> </tr> 
                <tr> <td height="20" colspan="2">Students Details</td> </tr>    
                <tr> <td height="60" colspan="2"><hr> </td> </tr>  
                <tr> <td height="40"> Student Id </td> <td> <input type="text" name="text2" value="" required=""></td> </tr>
                <tr> <td height="40"> Student Name </td> <td> <input type="text" name="text3" value="" required=""></td> </tr>
                <tr> <td height="40"> Address </td> <td> <textarea  name="text4" rows="5" cols="20" required=""></textarea></td> </tr>
                <tr> <td height="40"> Mobile No </td> <td> <input type="text" name="text5" value="" required=""></td> </tr>
                <tr> <td height="40"> eMail Id </td> <td> <input type="text" name="text6" value="" required=""></td> </tr>
<tr> <td height="40"> Course Doing  </td> <td> 

<% 
rst=stmt.executeQuery("select coursename from CourseTab order by coursename");
out.println("<select  name=text7 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString("coursename")+ " </option>");
}
out.println("</select>");
%>  
</td> </tr>    





<tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" value="Save" onclick="return Validate()"></td> </tr>       
</table>
</form>
