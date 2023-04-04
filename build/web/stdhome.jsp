<%-- 
    Document   : stdhome
    Created on : 16 Sep, 2022, 10:13:09 AM
    Author     : skaha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<title>Workshop CN & IP</title>
<head>

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
<li><a href="stdhome.jsp">Home</a></li>
<li><a href="Viewworkshops.jsp">View Workshops</a></li>

<li><a href="login.html">Logout</a></li>
</ul>
<img  src="img/1.jpg" width="200px" height="200px" style="float:left;">
<center><h1>Welcome  <%=name%> </h1></center>
</body>
</html>
