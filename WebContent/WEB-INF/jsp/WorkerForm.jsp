<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />
<script src="js/jquery1.8.js"></script>
<script src="js/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".txt1").datepicker({dateFormat:'dd-mm-yy',changeMonth:true,changeYear:true});
	});
</script>
</head>
<body>
<c:if test="${sessionScope.vname ne null }">
	<form:form action="addworkerdetails.htm" commandName="worker1"
		method="post">
		<table>
			<tr>
				<td>Name</td>
				<td><form:input path="wname"/></td>
			</tr>
			<tr>
				<td>Category</td>
				<td><form:select path="wcategory">
				<form:option value="">-----Select Category-----</form:option>
				<form:option value="Plumber">Plumber</form:option>
				<form:option value="Electrical">Electrical</form:option>
				<form:option value="Home Cleaning">Home Cleaning</form:option>
				<form:option value="Computer Repair">Computer Repair</form:option>
				</form:select>
				
				</td>
			</tr>
			<tr>
				<td>Contact No.</td>
				<td><form:input path="wcontactno"/></td>
			</tr>
			<tr>
				<td>Sex</td>
				<td><form:radiobutton path="wsex" value="male" name="sex"/>Male
				<form:radiobutton path="wsex" value="female" name="sex"/>Female</td>
			</tr>
			<tr>
				<td>DOB</td>
				<td><form:input path="wdob" type="text" class="txt1"/></td>
			</tr>
			<tr>
				<td>Experience</td>
				<td><form:input path="wexp"/></td>
			</tr>
			<tr>
				<td>Language</td>
				<td><form:input path="wlanguage"/></td>
			</tr>
			<tr>
				<td>Start Date</td>
				<td><form:input path="wstart_date" type="text" class="txt1"/></td>
			</tr>
			<tr>
				<td>End Date</td>
				<td><form:input path="wend_date" type="text" class="txt1"/></td>
			</tr>
			<tr>
				<td>Start Time</td>
				<td><form:input path="wstart_time" type="text"/></td>
			</tr>
			<tr>
				<td>End Time</td>
				<td><form:input path="wend_time" type="text"/></td>
			</tr>
			
			<tr>
				<td>Rent/Hour(Rs.)</td>
				<td><form:input path="wrent"/></td>
			</tr>
			<tr>
				<td>Image</td>
				<td><form:input path="wimage"/></td>
			</tr>
			<tr>
			<td><input type="submit"/></td>
			</tr>
		</table>
	</form:form>
</c:if>
<c:if test="${sessionScope.vname eq null }">
	<h2>You are not authenticated</h2>
	</c:if>
</body>
</html>