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
	<h1> EMPLOYEES AVERAGE SALARY</h1>
<table border="2">
<tr>
<th>Developer</th>
<th>Designer</th>
<th>Team Leader</th>
<th>Manager</th>
<th>Intern</th>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EIB","root","root"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select avg(Salary) from emp_pro where role like '%Developer'");
ResultSet rs1=st.executeQuery("select avg(Salary) from emp_pro where role like '%Designer'"); 
ResultSet rs2=st.executeQuery("select avg(Salary) from emp_pro where role like '%Team Lead%'");
ResultSet rs3=st.executeQuery("select avg(Salary) from emp_pro where role like '%Manager%'");
ResultSet rs4=st.executeQuery("select avg(Salary) from emp_pro where role like '%Intern'");


if(rs.next())
{
	%>

	<tr>
    <td><%out.println(rs.getInt(1)); %></td>
    </tr>
<% } 
if(rs1.next())
{
%>  
<tr>   
	<td><%out.println(rs1.getInt(1)); %></td>
	</tr>
	<% }
if(rs2.next())
{
%>
<tr><td><%out.println(rs1.getInt(1)); %></td></tr>
<% }
if(rs3.next())
{
%>

	<tr><td><%out.println(rs2.getInt(1)); %></td></tr>
<% }
 if(rs4.next())
 {
 %>	
	<tr><td><%out.println(rs3.getInt(1)); %></td></tr>
	<% }
        %>

    </table>
    <%
    rs.close();
    rs1.close();
    rs2.close();
    rs3.close();
    rs4.close();
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