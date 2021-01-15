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

<style>
.t1{
float:left;
margin-right:40px;

}

.t2{
float:left;
margin-right:20px;

}

</style>
</head>
<body background="images/bg2.jpg">
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
ResultSet rs=st.executeQuery("select * from emp_biodata where EID like '"+userid+"' "); 
if(rs.next())
{
%>

<br>
<div class="t1">
<table class="t1" border=2 cellpadding=2 cellspacing=2>
<tr><td colspan=2>Basic Data</td></tr>
<tr>
<th>EID</th>
<td> <% out.println(rs.getString(1)); %>  </td>
</tr>
<tr>
<th>Name</th>
<td> <% out.println(rs.getString(2)+"  ");  out.println(rs.getString(3)+"  " ); out.println(rs.getString(4)); %>  </td>
</tr>
<tr>
<th>Age</th>
<td> <% out.println(rs.getString(5)); %>  </td>
</tr>
<tr>
<th>Gender</th>
<td> <% out.println(rs.getString(6)); %>  </td>
</tr>
<tr>
<th>Marital Status</th>
<td> <% out.println(rs.getString(7)); %>  </td>
</tr>
<tr>
<th>Phone</th>
<td> <% out.println(rs.getString(8)); %>  </td>
</tr>
<tr>
<th>Email</th>
<td> <% out.println(rs.getString(9)); %>  </td>
</tr>

</table>

<table class="t2" border=2 cellpadding=2 cellspacing=2>
<tr><td colspan=2>Residential Data</td></tr>
<tr>
<th>Native</th>
<td> <% out.println(rs.getString(10)); %>  </td>
</tr>
<tr>
<th>Living City</th>
<td> <% out.println(rs.getString(11)); %>  </td>
</tr>
<tr>
<th>State</th>
<td> <% out.println(rs.getString(12)); %>  </td>
</tr>
<tr>
<th>Country</th>
<td> <% out.println(rs.getString(13)); %>  </td>
</tr>
<tr>
<th>PinCode</th>
<td> <% out.println(rs.getString(14)); %>  </td>
</tr>
</table>

</div>
<center>
<pre>
<div class="t1">
<table class="t2" border=2 cellpadding=2 cellspacing=2>
<tr><td colspan=2>Professional Data</td></tr>
<tr>
<th>Qualification</th>
<td> <% out.println(rs.getString(15)); %>  </td>
</tr>
<tr>
<th>Languages</th>
<td> <% out.println(rs.getString(16)); %>  </td>
</tr>
<tr>
<th>Experience</th>
<td> <% out.println(rs.getString(17)); %>  </td>
</tr>
<tr>
<th>OldCompany</th>
<td> <% out.println(rs.getString(18)); %>  </td>
</tr>
</table>
</div>
</pre>
</center>
<%
}
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