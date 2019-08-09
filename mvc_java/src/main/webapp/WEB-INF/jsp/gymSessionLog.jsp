<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<div class="gym-log">

	<div>
		<h4>End</h4>
	</div>

	<h1>TESTING TESTING TESTING</h1>

	<div>
		<c:forEach var="machine" items="${equipment}">
			<c:out value="${machine.name}" />
			<br>
			<c:out value="${machine.description}" />
			<br>
			<c:out value="${machine.muscleGroup}" />
			<br>
			<iframe width="560" height="315"
				src="${machine.video}" frameborder="0"
				allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
			<br>
		</c:forEach>
	</div>
</div>

<c:import url="/WEB-INF/jsp/footer.jsp" />