<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"                                                    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/coda-slider_addnew.css" type="text/css" charset="utf-8" />
<link rel="stylesheet" href="css/viewstyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EMPLOYEE Awards</title>
</head>
<body>
<center>Hall Of Fame Entry</center>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.io.*" %>
	<%@ page import="java.string.*" %>

<%
try
{
	String id=request.getParameter("EID");
	String efnam=request.getParameter("Efname");
	String rol=request.getParameter("role");
	String app=request.getParameter("ap");
	String bene=request.getParameter("ben");
	
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EIB","root","root"); 
Statement st= con.createStatement(); 
//ResultSet rs; 
int i=st.executeUpdate("insert into emp_hof values ('"+id+"','"+efnam+"','"+rol+"','"+app+"','"+bene+"')");

out.println("SUCCESSFULLY ENTERED!");
%>
    </table>
	<a href="index.html"> Home Page</a>
	<a href="Hall_Of_Fame.html"> Back </a>
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