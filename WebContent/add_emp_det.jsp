<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>Insert Operation</title>
</head>
<body>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/employee"
     user="root"  password="root"/>

<sql:update dataSource="${snapshot}" var="result">
INSERT INTO emp_pro VALUES (?,?,?,?,?,?,?);
<sql:param value="${param.EID}" />
<sql:param value="${param.Efname}" />

<sql:param value="${param.deptno}" />

<sql:param value="${param.deptname}" />


<sql:param value="${param.role}" />
<sql:param value="${param.salary}" />
<sql:param value="${param.HD}" />
</sql:update>
 

<b> Your Data Has Been Added Successfully !! Have A Nice Day !</b>
   
 <sql:query var="result" dataSource="${snapshot}">
SELECT * FROM emp_pro
</sql:query>

<div align="center">
Statistics
<table border="2" >
<tr>
   <th>EID</th>
   <th>Ename</th>
   <th>DeptNo</th>
   <th>Dept</th>
   <th>Role</th>
   <th>Salary</th>
   <th>HireDate</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.EID}"/></td>
   <td><c:out value="${row.Efname}"/></td>
   <td><c:out value="${row.DeptNo}"/></td>
   <td><c:out value="${row.Dept}"/></td>
   <td><c:out value="${row.Role}"/></td>
   <td><c:out value="${row.Salary}"/></td>
   <td><c:out value="${row.HireDate}"/></td>
   
</tr>
</c:forEach>
</table>
 </div>
</body>
</html>