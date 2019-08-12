<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/WEB-INF/jsp/header.jsp" /> 

<style>
#workout-table{
	background-color: rgba(255, 98, 4, 0.8700000047683716);
	border: 1px solid black;
	margin-right: 15%;
	margin-left: 15%;
	padding-left: 15px;
	border-radius: 15px;
}

table{
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
	display:inline-block; 
    vertical-align: top;
}

#class-name{
	font-size: 25px;
	
}

#class-time{
	padding-top: 18px; 

}

button {
	background-color: black;
	border: 1px solid black;
	border-radius: 15px;
	color: white;  

}

</style>
		
<c:url var="formAction" value="/calendar" />

<div id="workout-table">
	<c:forEach var="clazz" items="${calendar}" begin="0" end="0" > 
	<form method="POST" action="${formAction}">
		<h1>Thursday - <c:out value="${clazz.classDate}" /></h1>
		</c:forEach> 
		<c:forEach var="clazz" items="${calendar}" begin="0" end="4" > 
		<li style="list-style: none;">
			<ul id="class-time">
			<input type="hidden" name="classStartTime" />
			<fmt:formatDate type = "time" timeStyle="short" value = "${clazz.classStartTime}" />
			<input type="hidden" name="classEndTime" />
         	<fmt:formatDate type = "time" timeStyle="short" value = "${clazz.classEndTime}" />
           </ul>
         	<input type="hidden" name="workoutClassName" />
			<ul id="class-name"><c:out value ="${clazz.workoutClassName}" /></ul>
			<ul id="class-time"><button type="submit">Add to Your Schedule</button></ul>
		</form>
		
	</li>
	</c:forEach>
</div>	
		
<c:import url="/WEB-INF/jsp/footer.jsp" /> 

  