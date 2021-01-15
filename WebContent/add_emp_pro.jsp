<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"                                                    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/coda-slider_addnew.css" type="text/css" charset="utf-8" />
<link rel="stylesheet" href="css/viewstyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADD EMPLOYEE</title>
</head>
<body>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.io.*" %>
	<%@ page import="java.string.*" %>

<%
try
{
	String e=request.getParameter("EID");
	String ef=request.getParameter("efname");
	String den=request.getParameter("dn");
	String dept=request.getParameter("dep");
	//String a=request.getParameter("Age");
	//int ageval = Integer.parseInt(request.getParameter("Age"));
	String rol=request.getParameter("role");
	int salary= Integer.parseInt(request.getParameter("sal"));
	String hdd=request.getParameter("hd");

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EIB","root","root"); 
Statement st= con.createStatement(); 
//ResultSet rs; 
int i=st.executeUpdate("insert into emp_pro values ('"+e+"','"+ef+"','"+den+"','"+dept+"','"+rol+"','"+salary+"','"+hdd+"')"); 
out.println("Registered Successfully ! !"); 
  %>
  <a href="LE.html"> Back </a>
    <%
    //rs.close();
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