<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"                                                    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/coda-slider_addnew.css" type="text/css" charset="utf-8" />
<link rel="stylesheet" href="css/viewstyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EMPLOYEES LIST BY CITY</title>
</head>
<body>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.io.*" %>
	<%@ page import="java.string.*" %>
	<h1> EMPLOYEE LIST</h1>
<table border="2">
<tr>
<th>EID</th>
<th>Efname</th>
<th>City</th>

</tr>
<%
try
{
	String id=request.getParameter("city");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EIB","root","root"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from emp_biodata where City like '"+id+"' "); 

while(rs.next())
{

%>
    <tr>
    <td><%out.println(rs.getString(1)); %></td>
    <td><%out.println(rs.getString(2)); %></td>
    <td><%out.println(rs.getString("City")); %></td>
    </tr>
        <%

}
%>

    </table>
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