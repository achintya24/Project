<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Worker Details</h1>
	<hr>
<a href="logout">Logout</a>
	<table cellpadding="10" bgcolor="#e7e7e7">
	<tr>
		<td>ID</td>
		<td>Name</td>
		<td>Contact Number</td>
		<td>Catgeory</td>
		<td>Sex</td>
		<td>DOB</td>
		<td>Experience</td>
		<td>StartDate</td>
		<td>End Date</td>
		<td>Ranking</td>
		<td>StartTimme</td>
		<td>EndTime</td>
		<td>Availability</td>
		<td>Wage</td>
		<td>Image</td>
		<td>Ratings Count</td>
	</tr>
	<c:forEach items="${elist }" var="w">
	<form action="addin" method="get">
	<tr>
		<td>${w.worker_id }</td>
		<td>${w.worker_name }</td>
		<td>${w.worker_contact_no }</td>
		<td>${w.worker_category }</td>
		<td>${w.worker_sex }</td>
		<td>${w.worker_dob }</td>
		<td>${w.worker_exp }</td>
		<td>${w.worker_startdate }</td>
		<td>${w.worker_enddate }</td>
		<td>${w.worker_ranking }</td>
		<td>${w.worker_starttime }</td>
		<td>${w.worker_endtime }</td>
		<td>${w.worker_avail }</td>
		<td>${w.worker_rent }</td>
		<td>${w.worker_image }</td>
		<td>${w.worker_rcount }</td>
		<%-- <td><fmt:formatDate value="${e.doj }" pattern="dd-MMM-yyyy"/></td> --%>
		<td><button name="worker_id" value="${w.worker_id }" id="wid" onclick="view">Add</button></td>
	</tr>
	</form>
	</c:forEach>
	
	
	</table>

</body>
</html>