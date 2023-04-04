<%-- 
    Document   : stdhome
    Created on : 16 Sep, 2022, 10:13:09 AM
    Author     : skaha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<title>Workshop CN & IP</title>
<head>
<script type="text/javascript">
function validation(){
var a = document.Reg.mobno.value;
if(isNaN(a)){
alert("Mobile number should be numbers only");
document.Reg.mobno.focus();
return false;
}
if(a.length != 10){
alert("Mobile number should be 10 numbers only");
document.Reg.mobno.focus();
return false;
}
if((a.charAt(0)!=9) && (a.charAt(0)!=8) && (a.charAt(0)!=7) && (a.charAt(0)!=6)){
alert("Number should start with 6 or 7 or 8 0r 9 only");
document.Reg.mobno.focus();
return false;
}
return true;
}
</script>
<style>
ul{
height: 100px;
width: auto;
}
ul li{
list-style: none;
float:left;
}
ul li a{
text-decoration: none;
padding-left: 20px;
}
</style>
</head>
<body bgcolor="Green">
<h1><font size="10" color="red" ><i><center>Workshop Application</center></i></font></h1>
<%
    String name = (String)session.getAttribute("name");
%>

<ul>
<li><a href="fachome.jsp">Home</a></li>
<li><a href="addworkshops.jsp">Add Workshops</a></li>
<li><a href="viewworkshopdts.jsp">View Workshops</a></li>
<li><a href="viewStd.jsp">View Students</a></li>

<li><a href="login.html">Logout</a></li>
</ul>
<img  src="img/1.jpg" width="200px" height="200px" style="float:left;">
<center><h1>Welcome  <%=name%> </h1></center>

<center><h2>Add Workshop Details Here</h2></center>

<form action="addworkshopdb.jsp" method="post">
    
    <table align="center">
        <tr>
            <td>Workshop Name:</td>
            <td><input type="text" name="wsname" required></td>
        </tr
         <tr>
            <td>Workshop Dates:</td>
            <td><input type="text" name="wsdates" required></td>
        </tr>
        <tr>
            <td>Workshop Description:</td>
            <td><textarea name="wsdes" required></textarea></td>
        </tr>
        <tr>
            <td><input type="submit" value="Add Workshop"></td>
            <td><input type="reset"></td>
        </tr>
    </table>
    
</form>
</body>
</html>
