<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"                                                    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/coda-slider_addnew.css" type="text/css" charset="utf-8" />
<link rel="stylesheet" href="css/viewstyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EMPLOYEES LIST</title>
</head>
<body>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.io.*" %>
	<%@ page import="java.string.*" %>

<%
try
{
	String eid=request.getParameter("EID");
	String efname=request.getParameter("Efname");
	String emname=request.getParameter("Emname");
	String elname=request.getParameter("Elname");
	String age=request.getParameter("Age");
	String gender=request.getParameter("Gender");
	String ms=request.getParameter("Marital_Status");
	String phone=request.getParameter("Phone");
	String email=request.getParameter("Email");
	
	
	
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","root"); 
Statement st= con.createStatement(); 
//ResultSet rs; 
int i=st.executeUpdate("update emp_biodata set Efname='"+efname+"',Emname='"+emname+"',Elname='"+elname+"',Age='"+age+"',Gender='"+gender+"',Marital_Status='"+ms+"',Phone='"+phone+"',Email='"+email+"' where EID='"+eid+"' "); 

out.println("Data Updated Successfully ! !"); 
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