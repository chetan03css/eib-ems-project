<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>SELECT Operation</title>
</head>
<body>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/chetan"
     user="root"  password="root"/>

<sql:update dataSource="${snapshot}" var="result">
INSERT INTO login VALUES (?,?);
<sql:param value="${param.uname}" />
            <sql:param value="${param.pass}" />
</sql:update>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from login;
</sql:query>
 
<table border="1" width="100%">
<tr>
   <th>Uname</th>
   <th>Password</th>
   
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.uname}"/></td>
   <td><c:out value="${row.pass}"/></td>
   
</tr>
</c:forEach>
</table>
 
</body>
</html>