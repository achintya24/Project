<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function alertfunc()
{
	alert("Your Booking has been cancelled!!");
	}
</script>
</head>
<body>
<h1>Your Bookings</h1>
<hr/>
<table cellpadding="10" bgcolor="#e7e7e7">
		<tr>
			<td>Booking ID</td>
			<td>Worker Name</td>
			<td>Start Date</td>
			<td>End Date</td>
			<td>Start Time</td>
			<td>End Time</td>
			<td>Category Name</td>
			<td>City</td>
			<td>Locality</td>
			<td>Address</td>
			<td>Pincode</td>
		</tr>
		<c:forEach items="${elist }" var="b">
		<form:form action="cancel" method="GET">
		<tr>
		<td>${b.booking_id}</td>
		<td>${b.worker_name}</td>
		<td>${b.start_date}</td>
		<td>${b.end_date}</td>
		<td>${b.start_time}</td>
		<td>${b.end_time}</td>
		<td>${b.category}</td>
		<td>${b.city }</td>
		<td>${b.locality}</td>
		<td>${b.address}</td>
		<td>${b.pincode}</td>
		<td><button name="cancel_id" value="${b.booking_id }" onclick="alertfunc();">Cancel</button>
		</td>
		</tr>
		</form:form>
		</c:forEach>
		
		</table>
</body>
</html>