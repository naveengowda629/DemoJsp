<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
	<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMP CRUD</title>

 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/naveen" 
	 user="root" password="root"/>
	 
	 <sql:update dataSource="${db}" var="rs">Insert into employee values(3,"harsh",23)</sql:update>
	 
	 <sql:query var="rs" dataSource="${db}"> select * from employee </sql:query>
	 
	 <c:set var="id" value="3"></c:set>
	 <sql:update dataSource="${db}" var="count" >delete from employee where id=?
	 		<sql:param value="${id}" />
	 </sql:update> 
	 
	 <table class="table table-striped" >
         <tr>
            <th>Emp ID</th>
            <th>Name</th>
            <th>Age</th>
         </tr>
         
         <c:forEach var = "row" items = "${rs.rows}">
            <tr>
               <td><c:out value = "${row.id}"/></td>
               <td><c:out value = "${row.name}"/></td>
               <td><c:out value = "${row.age}"/></td>
            </tr>
         </c:forEach>
      </table>
</body>
</html>