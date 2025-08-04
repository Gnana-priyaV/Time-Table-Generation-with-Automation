<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>
<html>
    <head>
        <style>
            body{
                background-image: url('images/time7.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            } 
               table {
    border-collapse: collapse;
    width: 60%;
}

th, td {
    text-align: center;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
 root { 
    display: block;
}

body {
  margin: 0px;
  padding:0px;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
    margin: 0px;
  padding:0px;
  overflow: hidden;
  background-color: black;
  border-radius: 5px;
}

.topnav a {
    margin: 0px;
  padding:0px;
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
   border-radius: 5px;
}

.topnav a:hover {
   
  background-color: #ddd;
  color: black;
}

.topnav a.active {
    margin: 0px;
  padding:0px;
  background-color: #04AA6D;
  color: white;
}
</style>
    </head>
<%
int i=0;int j=0;int k=0;int m=0; int rand1=0;
String t1=(String)session.getAttribute( "c1var" );
String s1=(String)session.getAttribute( "s1var" );
stmt.executeUpdate("delete from TimeTableTab");
String[] stArray={"1.Mon", "2.Tue", "3.Wed", "4.Thu", "5.Fri","6.Sat"};
String[] subArray=new String[5];

int ch=0;

String word = "";String let1="";String staffvar="";

rst=stmt.executeQuery("select * from subjectTab where coursename='"+t1+"' and semister='"+s1+"' order by subjectname");
while( rst.next())
{
subArray[i]=rst.getString("subjectname");
i=i+1;
}

for(i=0;i<=4;i++)
{
   ch=0;
    word="";
    m=0;
    //out.println(j + "new set </br>");
    while (ch<1)
    {
    rand1= (int) (Math.random() * 5);
    let1=Integer.toString(rand1);
    //out.println(rand1);
    if(word.indexOf(let1) == -1)
    { word=word+let1;      m=m+1;  
    if(m>4) ch=101; 
    k=k+1;
    rst=stmt.executeQuery("select empcode from staffSubjectTab where SubjectName ='"+ subArray[rand1] +"'");
    if( rst.next())staffvar=rst.getString("empcode"); else staffvar="";
   //out.println("insert into TimeTableTab value(" + k + ",'" + t1 + "','" + s1 + "','"+ subArray[rand1] +"','"+ stArray[i] +"'," + j + ",'emp')");
    stmt.executeUpdate("insert into TimeTableTab value(" + k + ",'" + t1 + "','" + s1 + "','"+ subArray[rand1] +"','"+ stArray[i] +"'," + (m) + ",'"+ staffvar +"')");
    }
    //out.println(word + "</br>");
    }
    
    }
    




%>

<br><br>

<div class="topnav">
    <a  href="staffmainpage.jsp">Home</a>
    <div style="float: right;">
        <a href="index.jsp">LOGOUT</a>
    </div>

</div>
    <center>
<div class="table1" style="margin-top: 150px;text-align: center; margin-left:300px; 
    padding:100px 100px;">
  

                <table border="1" cellpadding="5" cellspacing="5"> 
<tr> <th> </th> <th> I Period <br>8:00-9:00 </th> <th> II Period<br>9:00-10:00 </th><th>Break<br>10:00-10:30 </th> <th> III Period <br>10:30-11:30 </th><th> IV Period <br>11:30-12:30 </th> <th> V Period <br>12:30-1:30</th> </tr>
<% 

rst=stmt.executeQuery("select * from TimeTableTab where ano < 26 order by aNo");
for( i=0;i<=4;i++)
{
    out.println("<tr> <td>"+stArray[i]+ "</td>");
    for( j=0;j<=4;j++)
    {   
    if( rst.next())
         {
         if(j==2){
            out.println("<td>Break</td>");
        }
    out.println("<td>"+rst.getString("subjectName")+ "/" +rst.getString("empcode")+ "</td>" );
    }
    }
    out.println("</tr>");
}
%>  
</table>
