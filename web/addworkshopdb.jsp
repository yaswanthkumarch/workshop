<%-- 
    Document   : db
    Created on : 15 Sep, 2022, 1:50:41 PM
    Author     : skaha
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String wsName = request.getParameter("wsname");
    String wsDates = request.getParameter("wsdates");
    String wsDec = request.getParameter("wsdes");
    
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/workshop","root","root");
        Statement st = conn.createStatement();
        
                int i = st.executeUpdate("insert into workshops values('"+wsName+"','"+wsDates+"','"+wsDec+"')");
                if(i>0){
                    %>
                    <script type="text/javascript">
                        window.alert("WorkShop Details added Successfully..");
                        window.location="addworkshops.jsp";
                    </script>
                    <%
                      
                }else{
                    response.sendRedirect("addworkshops.jsp?msg=Unable to add workshop..");
                }
           
    }catch(Exception e){
        out.println(e);
    }
%>
