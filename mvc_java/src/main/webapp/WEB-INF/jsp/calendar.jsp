<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<style>
#workout-table {
	background-color: rgba(255, 98, 4, 0.8700000047683716);
	border: 1px solid black;
	margin-right: 15%;
	margin-left: 15%;
	padding-left: 15px;
	border-radius: 15px;
}


h1 {
	margin-right: auto;
	margin-left: auto;
	color: white;
	padding-left-
}

ul {
	display: inline-block;
	vertical-align: top;
}

#class-name {
	font-size: 25px;
}

#class-time {
	padding-top: 18px;
}


</style>

<div id="workout-table">

	<c:url var="action" value="/users/${synergyUser.userName}" />
	<form method="GET" action="${action}">
		<button type="submit" class="classSignInButton">Go Back To Your Dashboard</button>
	</form>
	
	<c:forEach var="clazz" items="${calendar}" begin="20" end="24">
		<li style="list-style: none;">
			<ul id="class-time">
				<fmt:formatDate type="time" timeStyle="short"
					value="${clazz.classStartTime}" /> - 
				<fmt:formatDate type="time" timeStyle="short"
					value="${clazz.classEndTime}" />
			</ul>
			<ul id="class-name">
				<c:out value="${clazz.workoutClassName}" />
			</ul>
			<ul id="class-time">
			<c:url var="bookingURL" value="/calendarUpdate">
				<c:param name="classId" value="${clazz.classId}" />
			</c:url>
				<button class="classSignInButton"> <a href="${bookingURL}">Add to Your Schedule</a> </button>
			</ul>
		</li>
	</c:forEach>
</div>



<c:import url="/WEB-INF/jsp/footer.jsp" />
