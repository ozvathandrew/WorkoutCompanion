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

table {
	margin-right: auto;
	margin-left: auto;
}

td {
	border: 1px solid black;
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

button {
	background-color: black;
	border: 1px solid black;
	border-radius: 15px;
	color: white;
}
</style>


<div id="workout-table">
	<c:url var="formAction" value="/calendarUpdate" />
	<form method="GET" action="${formAction}">
		<c:forEach var="clazz" items="${calendar}" begin="0" end="4">
			<li style="list-style: none;"> 
				<ul id="class-time">
					<fmt:formatDate type="time" timeStyle="short"
						value="${clazz.classStartTime}" />

					<fmt:formatDate type="time" timeStyle="short"
						value="${clazz.classEndTime}" />
				</ul>

				<ul id="class-name">
					<c:out value="${clazz.workoutClassName}" />
				</ul>
				<ul id="class-time">
				</ul>
			</li>
			<button>Add to Your Schedule</button>
		</c:forEach>
	</form>

</div>

<c:import url="/WEB-INF/jsp/footer.jsp" />

