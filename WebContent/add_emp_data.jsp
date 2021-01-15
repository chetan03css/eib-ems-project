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
	String ef=request.getParameter("Efname");
	String em=request.getParameter("Emname");
	String el=request.getParameter("Elname");
	//String a=request.getParameter("Age");
	int ageval = Integer.parseInt(request.getParameter("Age"));
	String gen=request.getParameter("Gender");
	String mars=request.getParameter("Marital_Status");
	String ph=request.getParameter("Phone");
	String emailaddr=request.getParameter("Email");
	String nat=request.getParameter("Native");
	String cit=request.getParameter("City");
	String stat=request.getParameter("State");
	String countr=request.getParameter("Country");
	String pin=request.getParameter("PinCode");
	String qual=request.getParameter("Qual");
	String lang=request.getParameter("Language");
	String exp=request.getParameter("Experience");
	String old=request.getParameter("OldCo");
	
	
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EIB","root","root"); 
Statement st= con.createStatement(); 
//ResultSet rs; 
int i=st.executeUpdate("insert into emp_biodata values ('"+e+"','"+ef+"','"+em+"','"+el+"','"+ageval+"','"+gen+"','"+mars+"','"+ph+"','"+emailaddr+"','"+nat+"','"+cit+"','"+stat+"','"+countr+"','"+pin+"','"+qual+"','"+lang+"','"+exp+"','"+old+"')"); 
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