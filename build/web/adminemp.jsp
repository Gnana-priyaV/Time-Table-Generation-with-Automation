<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>


<link href="formcss.css" rel="stylesheet" type="text/css">
<link href="navbar.css" rel="stylesheet" type="text/css">
<html>
    <style>
    
       body{
                background-image: url('images/staff.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            } 
</style>
<%
String t1=request.getParameter("text1");
String p1=request.getParameter("pass1");
String p2=request.getParameter("pass2");
String t2=request.getParameter("text2");
String t3=request.getParameter("text3");
String t6=request.getParameter("text6");
String t7=request.getParameter("text7");
String t8=request.getParameter("text8");
String t9="";

if(t1!=null&&t1!=""){
stmt.executeUpdate("insert into empDetTab value('" + t1 + "','" + p1 + "','" + t2 + "','" + t3 + "','" + t6 + "','" + t7 + "','" + t8 + "','" + t9 + "')");
response.sendRedirect("adminemp.jsp?msg=success");
//response.sendRedirect("mainpage.jsp");
}

%>


<div class="topnav">
        <a  href="adminmainpage1.jsp">Home</a>
        <div style="float: right;">
            <a href="index.jsp">LOGOUT</a>
        </div>

    </div>
    <br>
    <center>
        <div class="table1" style="margin-top: 20px;text-align: center; margin-left:150px; 
    padding:100px 100px;">
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


<form method="POST"    action="adminemp.jsp">
<table border="0"> 
<tr> <td height="60" colspan="2"><hr> </td> </tr> 
                <tr> <td height="20" colspan="2">Staff Details</td> </tr>   
<tr> <td height="40"> Staff Id </td> <td> <input type="text" name="text1" value=""></td> </tr>
<tr> <td height="40"> Password </td> <td> <input type="password" name="pass1" value="abcd"></td> </tr>
<tr> <td height="40"> Emp Name </td> <td> <input type="text" name="text2" value=""></td> </tr>
<tr> <td height="40"> Address </td> <td> <Textarea  name="text3" cols="20" > </textarea></td> </tr>
<tr> <td height="40"> Mobile No </td> <td> <input type="text" name="text6" value=""></td> </tr>
<tr> <td height="40"> eMail Id </td> <td> <input type="text" name="text7" value=""></td> </tr>
<tr> <td height="40"> Qualification Name </td> <td> 

<% 
rst=stmt.executeQuery("select qname from QualificationTab order by qname");
out.println("<select  name=text8 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString("qname")+ " </option>");
}
out.println("</select>");
%>  
</td> </tr>    


<tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" ></td> </tr>       
</table>
</form>

</div>
    </center>
</html>
