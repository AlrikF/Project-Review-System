<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<body>

<%
	HttpServletResponse httpResponse = (HttpServletResponse) response;
	httpResponse.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
	httpResponse.setHeader("Pragma", "no-cache"); // HTTP 1.0
	httpResponse.setDateHeader("Expires", 0); // Proxies. 
	
	if(session.getAttribute("username")==null)
	{
		//out.println(session.getAttribute("username"));
		response.sendRedirect("login.jsp");
	}
%>




Welcome ${username}
<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>User</td>
<td>Password</td>

</tr>   
    
 <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/mini_project"
        user="root" password=""
    />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM student_login;
    </sql:query>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of users</h2></caption>
            <tr>
                <th>User</th>
                <th>Password</th>
                
            </tr>
            <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                    <td><c:out value="${user.Stu_name}" /></td>
                    <td><c:out value="${user.Stu_password}" /></td>
                    
                </tr>
            </c:forEach>

</table>

<form action="Logout">
	<input type="submit" value="Logout">
</form>

</body>
</html>	