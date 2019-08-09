<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<div class="gym-log">

	<div>
		<h4>End</h4>
	</div>

	<h6>TESTING TESTING TESTING</h6>

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
<<<<<<< HEAD

	<c:forEach var="machine" items="${equipment}">
		<form method="POST" action="${formAction}">
		<div class="session">
				<iframe width="360" height="315"
					src="https://www.youtube.com/embed/M_uPvGrMx_o" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
		<div class="session-machine">
		<div class="equipment-description">
			<c:out value="${machine.name}" /> - <c:out value="${machine.muscleGroup}" /><br><br>
			<c:out value="${machine.description}" />

			<input type="hidden" name="equipmentId" />${machine.equipment_id}</div>
			<table>
				<tr>
					<th><label for="sets">Sets: </label></th>
					<td><input type="text" name="sets" placeHolder="Sets" /></td>
				</tr>
				<tr>
					<th><label for="reps">Reps: </label></th>
					<td><input type="text" name="reps" placeHolder="Reps" /></td>
				</tr>
				<tr>
					<th><label for="weight">Weight: </label></th>
					<td><input type="text" name="weight" placeHolder="Weight" /></td>
				</tr>
				<tr>
					<td><button type="submit">Add Session</button></td>
				</tr>
			</table>
			</div>
			</div>
		</form>
	</c:forEach>

=======
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
>>>>>>> b4aa8c1aecb8b8a29f534f737269b84f4b7d1d7b
</div>



<c:import url="/WEB-INF/jsp/footer.jsp" />