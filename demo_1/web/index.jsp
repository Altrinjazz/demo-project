<%-- 
    Document   : index
    Created on : 15-Dec-2022, 2:21:40 pm
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <h1>Hello World!</h1>
             <%@page import="java.sql.*,java.util.*"%>
<%
//String first_name=request.getParameter("first_name");
try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo_dp", "root", "");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("INSERT INTO `study`(`name`, `gmail`, `pass`) VALUES ('Ram','ram@gmail.com','123476')");
        out.println("Data is successfully inserted!");
        }
        catch(Exception e)
        {
        out.println(e.getMessage());
        //e.printStackTrace();
        }
 %>
 
    </body>
</html>
