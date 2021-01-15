<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Employee Info Book</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" href="css/viewstyle.css">
<link rel="stylesheet" href="css/coda-slider_del.css" type="text/css" charset="utf-8" />
<script src="js/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>
</head>
<body background="skyblue">
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.io.*" %>
	<%@ page import="java.string.*" %>
<h1>Employee Bio Data</h1>
		 
<%
try
{
	String userid=request.getParameter("eid");
	out.println("user id is "+userid); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EIB","root","root"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from emp_biodata"); 
%>
<b> 
<%out.println(rs.getString(1)); %>
</b>
<%
    rs.close();
    st.close();
    con.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>


</body>
</html>