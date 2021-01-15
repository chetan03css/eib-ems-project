<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"                                                    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/coda-slider_addnew.css" type="text/css" charset="utf-8" />
<link rel="stylesheet" href="css/viewstyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EMPLOYEES REG</title>
</head>
<body>
<center> REGISTRATION</center>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.io.*" %>
	<%@ page import="java.string.*" %>

<%
try
{
	String eid=request.getParameter("EID");
	String efname=request.getParameter("Efname");
	String elname=request.getParameter("Elname");
	String uname=request.getParameter("uname");
	String pwd=request.getParameter("pass");
	String email=request.getParameter("Email");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EIB","root","root"); 
Statement st= con.createStatement(); 
//ResultSet rs; 
int i=st.executeUpdate("insert into emp_login_data values ('"+eid+"','"+efname+"','"+elname+"','"+uname+"','"+pwd+"','"+email+"' )");
int j=st.executeUpdate("insert into emp_login values ('"+uname+"','"+pwd+"')");

out.println("SUCCESSFULLY REGISTERED!");
%>
    </table>
	<a href="index.html"> Home Page</a>
    <%
    
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