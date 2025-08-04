<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>


<link href="formcss.css" rel="stylesheet" type="text/css">
<link href="navbar.css" rel="stylesheet" type="text/css">
<html>
    <style>

        body{
            background-image: url('images/time7.jpg');
            background-repeat: no-repeat;
            background-size: cover;
        } 
    </style>
    <%

        String t1 = request.getParameter("text1");
        String t2 = request.getParameter("text2");
        String t3 = request.getParameter("text3");
        String t4 = request.getParameter("text4");

        if (t2 != null && t2 != "") {



            stmt.executeUpdate("insert into SubjectTab values('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "')");
            response.sendRedirect("adminsubjects.jsp?msg=success");
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
                if (msg != null) {
                    if (msg.equals("success")) {
            %>
            <script>
                alert("Record Added Success");
            </script>
            <%                } else {
            %>
            <script>
                alert("Failed");
            </script>
            <%                        }
                }
            %>


            <form method="POST"    action="adminsubjects.jsp">
                <table border="0">
                    <tr> <td height="60" colspan="2"><hr> </td> </tr> 
                    <tr> <td height="20" colspan="2">Subjects Details</td> </tr>    
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
                    <tr> <td height="40"> Subject Name</td> <td> 
                            <select  name=text2 size=1>
                                <option>-Select Subjects-</option> 
                                <option value="Fundamentals of Computers">Fundamentals of Computers</option>
                                <option value="C Programming">C Programming</option>
                                <option value="Operating Systems">Operating Systems</option>
                                <option value="Data and Database Management Systems">Data and Database Management Systems</option>
                                <option value="Web-Based Application Development">Web-Based Application Development</option>
                                <option value="Computer Lab and Practical Work">Computer Lab and Practical Work</option>
                                <option value="Machine Learning">Machine Learning</option>
                                <option value="Professional and Business Communication">Professional and Business Communication</option>
                                <option value="System Programming">System Programming</option>
                                <option value="English">English</option>
                                <option value="Web programming">Web programming</option>
                                <option value="Hindi">Hindi</option>
                                <option value="Kannada">Kannada</option>
                                <option value="Sanskrit">Sanskrit</option>
                                <option value="Software engineering">Software engineering</option>
                                <option value="Unix and shell programming">Unix and shell programming</option>
                                <option value="VB Net programming">VB Net programming</option>
                            </select>
                        </td> </tr>


                    <tr> <td height="40"> Semester </td> <td> 
                            <select  name=text3 size=1>
                                <option>I </option>
                                <option>II </option>
                                <option>III </option>
                                <option>IV </option>
                                <option>V </option>
                                <option>VI</option>
                            </select>
                        </td> </tr> 
                    <tr> <td height="40"> Details </td> <td> <input type="text" name="text4" value="" required=""></td> </tr>

                    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Signup" ></td> </tr>       
                </table>
            </form>
