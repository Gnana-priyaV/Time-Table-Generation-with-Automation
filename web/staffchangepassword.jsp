<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="connfile.jsp"%>
<html>
  <link href="formcss.css" rel="stylesheet" type="text/css">
<link href="navbar.css" rel="stylesheet" type="text/css">
    <style>
            body{
                background-image: url('images/time1.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            } 
    </style>
    <div class="topnav">
        <a  href="staffmainpage.jsp">Home</a>
        <div style="float: right;">
            <a href="index.jsp">LOGOUT</a>
        </div>

    </div>
    <BR>
    

<%
		String t1=request.getParameter("text1");
		String t2="";
                t2=(String)session.getAttribute("empcodevar");
                String t3=request.getParameter("text2");
                session.setAttribute( "s1var", "");
		
                rst=stmt.executeQuery("select * from empDetTab where empcode= '" + t2 + "' and pWord='" + t1 + "'");
		if (!rst.next())
                {
                out.println("The entered old password is not correct");
                
                }
                else
                {
                if(t3!=null&&t3!=""){
		stmt.executeUpdate("update empdettab set pword='" + t3 + "' where empcode='" + t2 + "'");
		session.setAttribute( "s1var", "Password Changed Successfully");
                }
                else
                {
                session.setAttribute( "s1var", "Please enter all the fields");
                }
                }
%>

<br>
    <center>
        <div class="table1" style="margin-top: 20px;text-align: center; margin-left:150px; 
    padding:100px 100px;">

        <form method="POST"    action="staffchangepassword.jsp">
            <table border="0"> 
                <tr> <td height="60" colspan="2"><hr> </td> </tr> 
                <tr> <td height="20" colspan="2"> CHANGE PASSWORD </td> </tr>    
                <tr> <td height="60" colspan="2"><hr> </td> </tr> 
                <tr> <td height="40"> Old Password </td> <td> <input type="password" name="text1" value=""></td> </tr>
                <tr> <td height="40"> New Password </td> <td> <input type="password" name="text2" value=""></td> </tr>
                <tr> <td align="center" colspan="2"> <input type="submit" name="Save" ></td> </tr>       
                <tr> <td height="60" colspan="2"> </td> </tr> 
                <tr> <td height="20" colspan="2"></td> </tr> 
                <tr> <td height="20" colspan="2"><%= session.getAttribute("s1var")%> </td> </tr> 
            </table>
        </form>
    </div>
</html>
<!--<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="staffchangepassword.jsp">
    <table border="0"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/changepw.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> Old Password </td> <td> <input type="password" name="text1" value=""></td> </tr>
    <tr> <td height="40"> New Password </td> <td> <input type="password" name="text2" value=""></td> </tr>
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" ></td> </tr>       
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="20" colspan="2"></td> </tr> 
      <tr> <td height="20" colspan="2"><%= session.getAttribute( "s1var" )%> </td> </tr> 
    
    
    
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>-->
