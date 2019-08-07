<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/header.jsp" />
<%-- <%@include file="/WEB-INF/jsp/header.jsp"%> --%>

<c:url var="formAction" value="/updateProfile" />
<form method="POST" action="${formAction}">
<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
	<div class="row">
			<div class="form-group">
				<label for="workoutgoals">Workout Goals: </label>
				<input type="text" id="workoutGoals" name="workoutGoals" placeHolder="Workout Goals" class="form-control" />	
			</div>
	<div class="form-group">
			<button type="submit" class="btn btn-primary">Edit Profile</button>
		</div>
	</div>
</form>

<div class="workout-companion-header">
	<h4>THE ULTIMATE WORKOUT COMPANION</h4>
	<p>Let us help you get in the best shape of your life.</p>
</div>


<c:import url="/WEB-INF/jsp/footer.jsp" />