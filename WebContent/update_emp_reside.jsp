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
	String eid=request.getParameter("eid");
	String nat=request.getParameter("Native");
	String city=request.getParameter("City");
	String state=request.getParameter("State");
	String country=request.getParameter("Country");
	String pin=request.getParameter("PinCode");
	
	
	
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EIB","root","root"); 
Statement st= con.createStatement(); 
//ResultSet rs; 
int i=st.executeUpdate("update emp_biodata set Native='"+nat+"',City='"+city+"',State='"+state+"',Country='"+country+"',Pincode='"+pin+"' where EID='"+eid+"'"); 

out.println("Data Updated Successfully ! !"); 
  %>
  <a href="LE.html"> Back </a>
    <%
   // rs.close();
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