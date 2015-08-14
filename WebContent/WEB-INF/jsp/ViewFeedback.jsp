<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Feedback</h1>
<hr/>
<table>
<tr>
<td>Name</td>
<td>Email</td>
<td>Phone No</td>
<td>Message</td>
</tr>
<c:forEach items="${elist }" var="w">
<tr>
<td>${w.full_name }</td>
<td>${w.email }</td>
<td>${w.phone_no }</td>
<td>${w.message }</td>
</tr>
</c:forEach>
</table>
</body>
</html>