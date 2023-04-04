<%-- 
    Document   : db
    Created on : 15 Sep, 2022, 1:50:41 PM
    Author     : skaha
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String name = request.getParameter("name");
    String rollNo = request.getParameter("rollno");
    String branch = request.getParameter("branch");
    String email = request.getParameter("email");
    String mobNo = request.getParameter("mobno");
    String section = request.getParameter("section");
    String pass = request.getParameter("password");
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/workshop","root","root");
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery("select count(*) from students where rollNo = '"+rollNo+"'");
        while(rs.next()){
            int a = rs.getInt(1);
            if(a > 0){
                response.sendRedirect("index.html?msg=roll number alradey exists...");
            }else{
                int i = st.executeUpdate("insert into students values('"+name+"','"+rollNo+"','"+branch+"','"+section+"','"+email+"','"+mobNo+"','"+pass+"')");
                if(i>0){
                    %>
                    <script type="text/javascript">
                        window.alert("Registration successfull Login Now..");
                        window.location="login.html";
                    </script>
                    <%
                      
                }else{
                    response.sendRedirect("index.html?msg=Registration Failed");
                }
            }
        }
    }catch(Exception e){
        out.println(e);
    }
%>
