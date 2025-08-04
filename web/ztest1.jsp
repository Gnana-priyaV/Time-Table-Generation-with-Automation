<%
int i=0;int j=0;int k=0;int rand1=0; int ch=0;
int[] t1Array=new int[4];
String word = "";String t1="";
while (ch<1)
{
rand1= (int) (Math.random() * 5);
t1=Integer.toString(rand1);
out.println(rand1);
if(word.indexOf(t1) == -1)
{ word=word+t1;      k=k+1;  
if(k>4) ch=101; }
}
out.println(word);

%>


<table border="0" width="100%" > 
<tr><td height ="100" width="25%"></td><td align="center">

<form method="POST"    action="ztest1.jsp">
<table border="0" width="60%" align="center"> 
    
<tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Submit" ></td> </tr>       
</table>
</form>
</td><td width="25%"></td></tr>
</table>