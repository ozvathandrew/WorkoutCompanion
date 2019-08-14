<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/header.jsp" />

<div class="container"> 
	<c:url var="formAction" value="/updateProfile" />
	<form method="POST" action="${formAction}">
		<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
		<table>
			<tr>
				<div class="form-group">
					<th><label for="workoutgoals">Workout Goals: </label></th>
					<td><input type="text" id="workoutGoals" name="workoutGoals" placeHolder="Workout Goals" class="form-control" /></td>
				</div>
			</tr>
			<tr>
				<div class="form-group">
					<th><button type="submit" class="editProfileButton">Edit Profile</button></th>
				</div>
			</tr>
		</table>
	</form>
</div>

<div class="workout-companion-header">
	<h4>THE ULTIMATE WORKOUT COMPANION</h4>
	<p>Let us help you get in the best shape of your life.</p>
</div>


<c:import url="/WEB-INF/jsp/footer.jsp" />