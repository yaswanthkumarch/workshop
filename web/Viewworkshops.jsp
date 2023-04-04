<%-- 
    Document   : stdhome
    Created on : 16 Sep, 2022, 10:13:09 AM
    Author     : skaha
--%>

<%@page import="java.sql.*"%>
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
<li><a href="stdhome.jsp">Home</a></li>
<li><a href="Viewworkshops.jsp">View Workshops</a></li>

<li><a href="login.html">Logout</a></li>
</ul>
<img  src="img/1.jpg" width="200px" height="200px" style="float:left;">
<center><h1>Welcome  <%=name%> </h1>
    <h1>Workshop Details :</h1></center>
<%
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/workshop","root","root");
        Statement st = conn.createStatement();
        
        ResultSet rs = st.executeQuery("select * from workshops");
    
%>
<table align="center" cellpadding="5px" cellspacing="5px" border="2px">
    <tr>
        <th>Workshop Name</th>
        <th>Workshop Dates</th>
        <th>Workshop Description</th>
    </tr>
    <tr>
        <%
            while(rs.next()){
         %>       

        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
    </tr>
        <%       
        }
    }catch(Exception e){
        out.println(e);
     }
        %>
</table>
</body>
</html>
