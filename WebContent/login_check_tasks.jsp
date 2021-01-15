<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AUTHENTICATION PAGE</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.io.*" %>
	<%@ page import="java.string.*" %>
	<%
String userid=request.getParameter("uname"); 
session.putValue("userid",userid); 
String pwd=request.getParameter("pass"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EIB","root","root"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from emp_login where uname like '"+userid+"' "); 
//out.println(request.getParameter("username"));
//out.println(request.getParameter("password"));
if(rs.next()) 
{ 
if(rs.getString(2).equals(pwd)) 
{ 
String redirectUrl="LE.html"; 
response.sendRedirect(redirectUrl);

} 
else 
{ 
out.println("Invalid password try again"); 
} 
} 
else 
%>
<a href="index.html">Home</a>
</body>
</html>