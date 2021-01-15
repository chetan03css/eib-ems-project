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
	String e=request.getParameter("eid");
	
	
	
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EIB","root","root"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from emp_pro where EID='"+e+"'");
if(rs.next())
{
String eid=rs.getString(1);
String efname=rs.getString(2);
String dn=rs.getString(3);
String dep=rs.getString(4);
String role=rs.getString(5);
double salary=rs.getDouble("Salary");
String hiredate=rs.getString(7);

 //ResultSet rs1;
int x=st.executeUpdate("insert into emp_ex values('"+eid+"','"+efname+"','"+dn+"','"+dep+"','"+role+"','"+salary+"','"+hiredate+"')");
 
int i=st.executeUpdate("delete * from emp_biodata where EID like '"+e+"' ");
int j=st.executeUpdate("delete * from emp_pro where EID like '"+e+"' "); 

out.println("Data deleted Successfully ! !"); 
}
%>
  <h1> MORE DETAILS ON DELETED EMPLOYEE CAN BE FOUND IN EX-EMPLOYEE LIST !</h1><BR>
  
  <a href="LE.html">Go Back </a>
    <%
    rs.close();
    //rs1.close();
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