<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<html>

<HEAD>
<style>
    
       body{
                background-image: url('images/staff5.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            } 
</style>

</HEAD>
<A href="staffmainpage.jsp"> Staff Main </A> <BR> 
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>


<table border="1" cellpadding="5" cellspacing="5"> 
<tr> <td height="20" colspan="14"> <img style="-webkit-user-select: none" src="images/tt1.bmp"> </td> </tr>   
<tr> <td> </td> <td> I Period </td> <td> II Period </td> <td> III Period </td> <td> IV Period </td>  <td> V Period </td> </tr>
<% 
String[] stArray={"1.Mon", "2.Tue", "3.Wed", "4.Thu", "5.Fri"};
rst=stmt.executeQuery("select * from TimeTableTab where ano < 26 order by aNo");
for(int i=0;i<=4;i++)
{
    out.println("<tr> <td>"+stArray[i]+ "</td>");
    for(int j=0;j<=4;j++)
    {   
    if( rst.next())
    {
    out.println("<td>"+rst.getString("subjectName")+ "/" +rst.getString("empcode")+ "</td>" );
    }
    }
    out.println("</tr>");
}
%>  
</table>

</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>
