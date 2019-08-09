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
			<iframe width="560" height="315" src="${machine.video}"
				frameborder="0"
				allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
			<br>
		</c:forEach>
	</div>

	<c:url var="formAction" value="/gymSessionLog" />
	<form method="POST" action="${formAction}">

		<table>
			<div>
				<c:forEach var="machine" items="${equipment}">

					<tr>
						<div class="form-group">
							<th><label for="sets">Sets: </label></th>
							<td><input type="text" name="sets" placeHolder="Sets"
								class="form-control" /></td>
						</div>
					</tr>
					<tr>
						<div class="form-group">
							<th><label for="reps">Reps: </label></th>
							<td><input type="text" name="reps" placeHolder="Reps"
								class="form-control" /></td>
						</div>
					</tr>
					<tr>
						<div class="form-group">
							<th><label for="weight">Weight: </label></th>
							<td><input type="text" name="weight" placeHolder="Weight"
								class="form-control" /></td>
						</div>
					</tr>
					<tr>
						<th><c:out value="${machine.name}" /></th>
						<input type="hidden" name="equipment_id"
							value="${machine.equipment_id}" />
						<br>
						<td><c:out value="${machine.description}" /></td>
						<br>
						<td><c:out value="${machine.muscleGroup}" /></td>
						<br>
						<td><iframe width="560" height="315" src="${machine.video}"
								frameborder="0"
								allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen></iframe></td>
						<br>
						<div>
							<td><button type="submit">Add Session</button></td>
						</div>
				</c:forEach>
				</tr>
			</div>
		</table>

	</form>
</div>

<c:import url="/WEB-INF/jsp/footer.jsp" />