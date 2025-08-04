
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>

<link href="formcss.css" rel="stylesheet" type="text/css">
<link href="navbar.css" rel="stylesheet" type="text/css">
<style>
    
       body{
                background-image: url('images/time8.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            } 
</style>
<%
String t1=request.getParameter("day");
String t2=request.getParameter("text1");
String t3=request.getParameter("text2");
;

//stmt.executeUpdate("insert into books_details(book_name,author) values('"+bookname+"','"+author+"')");
if(t1!=null&&t1!=""){
stmt.executeUpdate("insert into studowntt value('" + t1 + "','" + t2 + "','" + t3 + "')");
response.sendRedirect("addeventtime.jsp?msg=success");}

%>

 <div class="topnav">
        <a  href="studentmainpage.jsp">Home</a>
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

<form method="POST"    action="addstudowntime.jsp">
<table border="0"> 
<tr> <td height="60" colspan="2"><hr> </td> </tr> 
<tr> <td height="20" colspan="2">Student Own Time Table</td> </tr> 
<tr> <td height="60" colspan="2"><hr> </td> </tr> 
<!--<tr> <td height="40"> Date </td> <td> <input type="date" name="text1" value=""></td> </tr>-->
<tr> <td height="40"> Day </td><td>
        <select name="day">
            <option value="">Select</option>
            <option value="monday">Monday</option>
             <option value="Tuesday">Tuesday</option>
              <option value="Wednesday">Wednesday</option>
               <option value="Thursday">Thursday</option>
                <option value="Friday">Friday</option>
                 <option value="Saturday">Saturday</option>
                  <option value="Sunday">Sunday</option>
        </select>
    </td>
</tr>
<tr> <td height="40"> Time </td> <td> <input type="text" name="text1" value="" required="" placeholder="Eg: 8:30 to 10:30"></td> </tr>
<tr> <td height="40"> Subject Name </td> <td> <input type="text" name="text2" value="" required=""></td> </tr>
<tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Login" ></td> </tr>       
</table>
</form>

