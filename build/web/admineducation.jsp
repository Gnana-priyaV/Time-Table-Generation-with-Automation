
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="connfile.jsp"%>

<link href="formcss.css" rel="stylesheet" type="text/css">
<link href="navbar.css" rel="stylesheet" type="text/css">
<style>
    
       body{
                background-image: url('images/time12.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            } 
</style>
<%
String t1=request.getParameter("text1");
String t2=request.getParameter("text2");


if(t1!=null&&t1!=""){
stmt.executeUpdate("insert into QualificationTab value('" + t1 + "','" + t2 + "')");
response.sendRedirect("admineducation.jsp?msg=success");}

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

<!--<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<form method="POST"    action="admineducation.jsp">
<table border="0"> 
<tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/ednames.bmp"> </td> </tr>    
<tr> <td height="60" colspan="2"> </td> </tr> 
<tr> <td height="40"> Qualification Name </td> <td> <input type="text" name="text1" value=""></td> </tr>
<tr> <td height="40"> Details </td> <td> <input type="text" name="text2" value=""></td> </tr>
<tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" ></td> </tr>       
</table>
</form>
</td><td width="25%"></td></tr>
</table>-->
<form method="POST"    action="admineducation.jsp">
            <table border="0"> 
                <tr> <td height="60" colspan="2"><hr> </td> </tr> 
                <tr> <td height="20" colspan="2">Qualification Details</td> </tr>    
                <tr> <td height="60" colspan="2"><hr> </td> </tr> 
                <tr> <td height="20"> Staff Qualification</td> <td>
                        <select name="text1" required="">
                            <option>--Select Qualification--</option>
                            <option value="MCA">MCA</option>
                            <option value="B.Tech">B.Tech</option>
                            <option value="M.Sc">M.Sc</option>
                            <option value="MCA">MCA</option>
                            <option value="BCA">BCA</option>
                             <option value="others">Others</option>
                                
                        </select>
                </tr>
                <tr> <td height="20"> Details </td> <td> <input type="text" name="text2" value="" required=""></td> </tr>

                <tr>  <td align="center" colspan="2"> <input type="submit" name="Login" ></td> </tr>       
            </table>
        </form>
    </div>
    </center>
</html>


