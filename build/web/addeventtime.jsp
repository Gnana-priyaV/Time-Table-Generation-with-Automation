
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>

<link href="formcss.css" rel="stylesheet" type="text/css">
<link href="navbar.css" rel="stylesheet" type="text/css">
<style>
    
       body{
                background-image: url('images/event.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            } 
            input[type=date], select {
            width: 200px;
            height: 35px;
              border-radius: 10px;
</style>
<%
String t1=request.getParameter("text1");
String t2=request.getParameter("text2");
String t3=request.getParameter("text3");
String t4=request.getParameter("text4");
String t5=request.getParameter("text5");

//stmt.executeUpdate("insert into books_details(book_name,author) values('"+bookname+"','"+author+"')");
if(t1!=null&&t1!=""){
stmt.executeUpdate("insert into eventtime value('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "','" + t5 + "')");
response.sendRedirect("addeventtime.jsp?msg=success");}

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



<form method="POST"    action="addeventtime.jsp">
<table border="0"> 
<tr> <td height="60" colspan="2"><hr> </td> </tr> 
<tr> <td height="20" colspan="2">Event DETAILS</td> </tr> 
<tr> <td height="60" colspan="2"><hr> </td> </tr> 
<tr> <td height="40"> Date </td> <td> <input type="date" name="text1" value=""></td> </tr>
<tr> <td height="40"> Day </td> <td> <input type="text" name="text2" value=""></td> </tr>
<tr> <td height="40"> Time </td> <td> <input type="text" name="text3" value=""></td> </tr>
<tr> <td height="40"> Event Name </td> <td> <input type="text" name="text4" value=""></td> </tr>
<tr> <td height="40"> Details </td> <td> <textarea  name="text5" rows="5" cols="20"></textarea></td> </tr>
<tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Login" ></td> </tr>       
</table>
</form>

