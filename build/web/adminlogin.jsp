
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<!--
<A href="index.jsp"> Home </A> <BR> 
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

        <form method="POST"    action="adminmainpage.jsp">
    <table border="0"> 
    <tr> <td height="20" colspan="2"> <A href="adminlogin.jsp"><img style="-webkit-user-select: none" src="images\adminlogin.bmp"></a> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> User Name </td> <td> <input type="text" name="text1" value=""></td> </tr>
    <tr> <td height="40"> Password </td> <td> <input type="password" name="text2" value=""></td> </tr>
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Login" ></td> </tr>       
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>-->

<%@ include file="footerfile.jsp"%>--%>



<!--<div class="topnav">
    <a  href="index.jsp">Home</a>
    <a class="active" href="adminlogin.jsp">ADMIN LOGIN</a>
    <a href="stafflogin.jsp">STAFF LOGIN</a>
    <a href="studentlogin.jsp">USER LOGIN</a>
</div>


<div id="id01" class="">

    <form class="modal-content animate" action="adminmainpage.jsp" method="post">
        <div class="imgcontainer">
            <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
            <img src="images/admin.jpg" alt="Avatar" class="avatar">
        </div>

        <div class="container">
            <label for="uname"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="text1" required>
            <br>
            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="text2" required>

            <button type="submit">Login</button>

        </div>


    </form>
</div>--> 

<!doctype html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <title>Time Table Management System</title>
        <link href='' rel='stylesheet'>
        <link href='https://use.fontawesome.com/releases/v5.8.1/css/all.css' rel='stylesheet'>

        <style>@import url('https://fonts.googleapis.com/css?family=Montserrat|Poppins&display=swap');

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }


            .bg-img {
                background: url(https://1.bp.blogspot.com/-TtlrJj6dDUM/WXWPd145E3I/AAAAAAAAlbc/0owXAO51ehUTUejCsDOUETjtgWXjAlNEACLcBGAs/s1600/University%2Bof%2BOxford%2B3.jpg);
                height: 150vh;
                background-size: cover;
                background-position: center;
            }

            .bg-img::after {

                content: '';
                top: 0;
                left: 0;
                height: 150%;
                width: 100%;
                background: rgba(0, 0, 0, 0.4);
            } 

            .content {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                text-align: center;
                z-index: 999;
                width: 370px;
                text-align: center;
                padding: 60px 32px;
                background: rgba(255, 255, 255, 0.04);
                box-shadow: -1px 4px 28px 0px rgba(0, 0, 0, 0.75);
                border-radius: 15px;
                margin-top:50px;
            }

            .content header {
                color: #fff;
                font-size: 33px;
                font-weight: 600;
                margin: 0 0 35px 0;
                font-family: 'Poppins', sans-serif;
            }

            .field {
                position: relative;
                height: 45px;
                width: 100%;
                display: flex;
                background: rgba(255, 255, 255, 0.94);
            }

            .field span {
                color: #222;
                width: 40px;
                line-height: 45px;
                padding: 0 10px;
            }

            .field input {
                height: 100%;
                width: 100%;
                background: transparent;
                border: none;
                outline: none;
                color: #222;
                font-size: 16px;
                font-family: 'Poppins', sans-serif;
            }



            .space {
                margin-top: 16px;
            }

            .pass {
                text-align: left;
                margin: 10px 0;
            }

            .pass a {
                color: #fff;
                font-family: 'Poppins', sans-serif;
                text-decoration: none;
            }

            .pass:hover a {
                text-decoration: underline;
            }

            input[type="submit"] {
                background: linear-gradient(to right, #0000ff 0%, #6666ff 100%);
                border: 1px solid linear-gradient(to right, #0000ff 0%, #6666ff 100%);
                ;
                color: #fff;
                font-size: 18px;
                letter-spacing: 1px;
                font-weight: 600;
                cursor: pointer;
                font-family: 'Montserrat', sans-serif;
            }

            input[type="submit"]:hover {
                background: linear-gradient(to left, #0000ff 0%, #6666ff 100%);
            }

            .login {
                color: #fff;
                margin: 20px 0;
                font-family: 'Poppins', sans-serif;
            }
            .btn{
                color:#999;
                background:rgba(0, 0, 0, 0.5);
                padding:10px 30px;
                font-size:12px;
                text-decoration:none;
                letter-spacing:2px;
                text-transform:uppercase;
            }

            .btn:hover{
                border:none;
                background:rgba(0, 0, 0, 0.4);
                background:white;
                /*  padding:20px 20px;*/
                color:#1b1b1b;
            }


            root { 
                display: block;
            }

            body {
                margin: 0;
                font-family: Arial, Helvetica, sans-serif;
            }

            .topnav {
                overflow: hidden;
                background-color: black;
                border-radius: 5px;
            }

            .topnav a {
                float: left;
                color: #f2f2f2;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 17px;
                border-radius: 5px;
            }

            .topnav a:hover {
                background-color:rgba(255, 255, 255, .5);
                color: black;
            }

            .topnav a.active {
                background-color: #606060;
                color: white;
            }


        </style>
    </head>

    <div class="topnav">
        <a  href="index.jsp" class="btn">Home</a>
        <a  href="adminlogin.jsp" class="btn">ADMIN LOGIN</a>
        <a href="stafflogin.jsp" class="btn">STAFF LOGIN</a>
        <a href="studentlogin.jsp" class="btn">USER LOGIN</a>
    </div>

    <div class="bg-img">
        <div class="content">
            <header>Login Form</header>
            <form action="adminmainpage.jsp" method="post">
                <div class="field">
                    <span class="fa fa-user"></span>
                    <input type="text" required="" placeholder="Username" name="text1">
                </div>
                <div class="field space">
                    <span class="fa fa-lock"></span>
                    <input type="password" class="password" required placeholder="Password" id="pass" name="text2">
                </div>
                <div class="login">
                    <input type="checkbox" onclick="myFunction()">Show Password
                </div>

                <div class="field">
                    <input type="submit" value="LOGIN">
                </div>


                <script>
                    function myFunction() {
                        var x = document.getElementById("pass");
                        if (x.type === "pass") {
                            x.type = "text";
                        } else {
                            x.type = "pass";
                        }
                    }
                </script>

            </form>
        </div>
    </div>
    <script type='text/javascript'></script>
</body>
</html>