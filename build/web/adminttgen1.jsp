<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>

<link href="formcss.css" rel="stylesheet" type="text/css">
<link href="navbar.css" rel="stylesheet" type="text/css">

<style>

    body{
        background-image: url('images/time14.jpg');
        background-repeat: no-repeat;
        background-size: cover;
    } 
</style>
<%

    String t1 = request.getParameter("text1");
    String t2 = request.getParameter("text2");
    session.setAttribute("c1var", "");
    session.setAttribute("s1var", "");
    if (t1 != null && t1 != "") {
        session.setAttribute("c1var", t1);
        session.setAttribute("s1var", t2);
        response.sendRedirect("adminttgen2.jsp");
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


        <form method="POST"    action="adminttgen1.jsp">
            <table border="0" width="60%" align="center"> 
                <tr> <td height="60" colspan="2"><hr> </td> </tr> 
                <tr> <td height="20" colspan="2">Time Table</td> </tr>    
                <tr> <td height="60" colspan="2"><hr> </td> </tr>        
                <tr> <td height="40"> Course Name  </td> <td> 

                        <%
                            rst = stmt.executeQuery("select coursename from CourseTab order by coursename");
                            out.println("<select  name=text1 size=1>");
                            while (rst.next()) {
                                out.println("<option>" + rst.getString("coursename") + " </option>");
                            }
                            out.println("</select>");
                        %>  
                    </td> </tr>    

                <tr> <td height="40"> Semester </td> <td> 
                        <select  name=text2 size=1>
                            <option>I </option>
                            <option>II </option>
                            <option>III </option>
                            <option>IV </option>
                            <option>V </option>
                            <option>VI </option>
                        </select>
                    </td> </tr> 



                <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Submit" ></td> </tr>       
            </table>
        </form>

