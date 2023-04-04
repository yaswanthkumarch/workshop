<%-- 
    Document   : logdb
    Created on : 16 Sep, 2022, 9:53:58 AM
    Author     : skaha
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String rollNo = request.getParameter("rollno");
    String pass = request.getParameter("password");
    
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/workshop","root","root");
        Statement st = conn.createStatement();
        
        ResultSet rs = st.executeQuery("select * from students where rollNo='"+rollNo+"' and password = '"+pass+"'");
        if(rs.next()){
            String name = rs.getString(1);
            session.setAttribute("name",name);
             %>
                    <script type="text/javascript">
                        window.alert("Login successfull..");
                        window.location="stdhome.jsp";
                    </script>
             <%
        }else{
            %>
                <script type="text/javascript">
                    window.alert("Login Failed! Try Again..");
                    window.location="login.html";
                </script>
            <%
        }
        
    }catch(Exception e){
        out.println(e);
    }
%>
