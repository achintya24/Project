<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${sessionScope.vname ne null }">
		<h1>Worker Details</h1>
		
		<hr>
		<form:form action="viewbycategory1.htm" commandName="radiob"
			method="get">
			<table>
				<tr>
					<td><form:input type="radio" name="sortby" path="sortby"
							value="rating" />SortByRating</td>
					<td><form:input type="radio" name="sortby" path="sortby"
							value="experience" />SortByExperience</td>
							<td><form:input type="radio" name="sortby" path="sortby"
							value="price" />SortByPrice</td>
					<td><input type="submit" value="Sort" /></td>
				</tr>
			</table>
		</form:form>
		<table cellpadding="10" bgcolor="#e7e7e7"><hr/>
			<tr>
				<td>ID</td>
				<td>Name</td>
				<td>Contact Number</td>
				<td>Category</td>
				<td>Sex</td>
				<td>DOB</td>
				<td>Experience</td>
			
				<td>Ranking</td>
				<td>StartTimme</td>
				<td>EndTime</td>
				<td>Availability</td>
				<td>Wage</td>
				<td>Image</td>
				<td>Ratings Count</td>
				<td>Locality</td>
			</tr>
			<c:choose>
				<c:when test="${sortByRating ne null}">
					<c:forEach items="${sortByRating }" var="w">
						<form:form action="worker" method="GET">
							<tr>
								<td>${w.worker_id }</td>
								<td>${w.worker_name }</td>
								<td>${w.worker_contact_no }</td>
								<td>${w.worker_category }</td>
								<td>${w.worker_sex }</td>
								<td>${w.worker_dob }</td>
								<td>${w.worker_exp }</td>
								<td style="color:red;">${w.worker_ranking }</td>
								<td>${w.worker_starttime }</td>
								<td>${w.worker_endtime }</td>
								<td>${w.worker_avail }</td>
								<td>${w.worker_rent }</td>
								<td>${w.worker_image }</td>
								<td>${w.worker_rcount }</td>
								<td>${w.locality }</td>
								<td><fmt:formatDate value="${e.doj }" pattern="dd-MMM-yyyy" /></td>
								<td><button name="worker_id"
										value="${w.worker_id }-${w.worker_category}-${sessionScope.vuser_id }"
										id="wid">BookNow</button></td>
							</tr>
						</form:form>
					</c:forEach>
				</c:when>
				<c:when test="${viewall ne null}">
					<c:forEach items="${viewall }" var="w">
						<form:form action="worker" method="GET">
							<tr>
								<td>${w.worker_id }</td>
								<td>${w.worker_name }</td>
								<td>${w.worker_contact_no }</td>
								<td>${w.worker_category }</td>
								<td>${w.worker_sex }</td>
								<td>${w.worker_dob }</td>
								<td>${w.worker_exp }</td>
								<td>${w.worker_ranking }</td>
								<td>${w.worker_starttime }</td>
								<td>${w.worker_endtime }</td>
								<td>${w.worker_avail }</td>
								<td>${w.worker_rent }</td>
								<td>${w.worker_image }</td>
								<td>${w.worker_rcount }</td>
								<td style="color:red;">${w.locality }</td>
								<td><fmt:formatDate value="${e.doj }" pattern="dd-MMM-yyyy" /></td>
								<td><button name="worker_id"
										value="${w.worker_id }-${w.worker_category}-${sessionScope.vuser_id }"
										id="wid">BookNow</button></td>
							</tr>
						</form:form>
					</c:forEach>
				</c:when>
				<c:when test="${sortByPrice ne null}">
					<c:forEach items="${sortByPrice }" var="w">
						<form:form action="worker" method="GET">
							<tr>
								<td>${w.worker_id }</td>
								<td>${w.worker_name }</td>
								<td>${w.worker_contact_no }</td>
								<td>${w.worker_category }</td>
								<td>${w.worker_sex }</td>
								<td>${w.worker_dob }</td>
								<td>${w.worker_exp }</td>
								<td>${w.worker_ranking }</td>
								<td>${w.worker_starttime }</td>
								<td>${w.worker_endtime }</td>
								<td>${w.worker_avail }</td>
								<td>${w.worker_rent }</td>
								<td>${w.worker_image }</td>
								<td>${w.worker_rcount }</td>
								<td style="color:red;">${w.locality }</td>
								<td><fmt:formatDate value="${e.doj }" pattern="dd-MMM-yyyy" /></td>
								<td><button name="worker_id"
										value="${w.worker_id }-${w.worker_category}-${sessionScope.vuser_id }"
										id="wid">BookNow</button></td>
							</tr>
						</form:form>
					</c:forEach>
				</c:when>
				<c:when test="${sortByExperience ne null}">
					
						<c:forEach items="${sortByExperience }" var="w">
							<form:form action="worker" method="GET">
								<tr>
									<td>${w.worker_id }</td>
								<td>${w.worker_name }</td>
								<td>${w.worker_contact_no }</td>
								<td>${w.worker_category }</td>
								<td>${w.worker_sex }</td>
								<td>${w.worker_dob }</td>
								<td style="color:red;">${w.worker_exp }</td>
								<td>${w.worker_ranking }</td>
								<td>${w.worker_starttime }</td>
								<td>${w.worker_endtime }</td>
								<td>${w.worker_avail }</td>
								<td>${w.worker_rent }</td>
								<td>${w.worker_image }</td>
								<td>${w.worker_rcount }</td>
								<td>${w.locality }</td>
									<td><fmt:formatDate value="${e.doj }"
											pattern="dd-MMM-yyyy" /></td>
									<td><button name="worker_id"
											value="${w.worker_id }-${w.worker_category}-${sessionScope.vuser_id }"
											id="wid">BookNow</button></td>
								</tr>
							</form:form>
						</c:forEach>
					
				</c:when>
				<c:otherwise>
					No Service Available!!
					
				</c:otherwise>
			</c:choose>

		</table>
	</c:if>
	<c:if test="${sessionScope.vname eq null }">
		<h2>You are not authenticated</h2>
	</c:if>
</body>
</html>