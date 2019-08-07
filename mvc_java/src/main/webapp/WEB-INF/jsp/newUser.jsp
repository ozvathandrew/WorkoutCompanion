<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$.validator.addMethod('capitals', function(thing) {
							return thing.match(/[A-Z]/);
						});
						$("form")
								.validate(
										{

											rules : {
												userName : {
													required : true
												},
												password : {
													required : true,
													minlength : 15,
													capitals : true,
												},
												confirmPassword : {
													required : true,
													equalTo : "#password"
												}
											},
											messages : {
												password : {
													minlength : "Password too short, make it at least 15 characters",
													capitals : "Field must contain a capital letter",
												},
												confirmPassword : {
													equalTo : "Passwords do not match"
												}
											},
											errorClass : "error"
										});
					});
</script>

<div class="create-member">
	<c:url var="formAction" value="/users" />
	<form method="POST" action="${formAction}">


		<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
		<table>
			<tr>
				<div class="form-group">
					<th><label for="userName">User Name: </label></th>
					<td><input type="text" id="userName" name="userName"
						placeHolder="User Name" class="form-control" /></td>
				</div>
			</tr>
			<tr>
				<div class="form-group">
					<th><label for="password">Password: </label></th>
					<td><input type="password" id="password" name="password"
						placeHolder="Password" class="form-control" /></td>
				</div>
			</tr>
			<tr>
				<div class="form-group">
					<th><label for="confirmPassword">Confirm Password: </label></th>
					<td><input type="password" id="confirmPassword"
						name="confirmPassword" placeHolder="Re-Type Password"
						class="form-control" /></td>
				</div>
			</tr>
			<tr>
				<div class="form-group">
					<th><label for="name">Name: </label></th>
					<td><input type="text" id="name" name="name"
						placeHolder="Your name" class="form-control" /></td>
				</div>
			</tr>
			<tr>
				<div class="form-group">
					<th><label for="email">Email: </label></th>
					<td><input type="email" id="email" name="email"
						placeHolder="Email address" class="form-control" /></td>
				</div>
			</tr>
			<tr>
				<div class="form-group">
					<th><label for="avatar">Avatar: </label></th>
					<td><input type="radio" id="avatar" name="avatar"
						value="here is the href" class="form-control" /> <input
						type="radio" id="avatar" name="avatar" value="here is the href"
						class="form-control" /> <input type="radio" id="avatar"
						name="avatar" value="here is the href" class="form-control" /> <input
						type="radio" id="avatar" name="avatar" value="here is the href"
						class="form-control" /> <input type="radio" id="avatar"
						name="avatar" value="here is the href" class="form-control" /> <input
						type="radio" id="avatar" name="avatar" value="here is the href"
						class="form-control" /> <input type="radio" id="avatar"
						name="avatar" value="here is the href" class="form-control" /> <input
						type="radio" id="avatar" name="avatar" value="here is the href"
						class="form-control" /> <input type="radio" id="avatar"
						name="avatar" value="here is the href" class="form-control" /> <input
						type="radio" id="avatar" name="avatar" value="here is the href"
						class="form-control" /></td>
				</div>
			</tr>
			<tr>
				<div class="form-group">
					<th><label for="workoutgoals">Workout Goals: </label></th>
					<td><input type="text" id="workoutGoals" name="workoutGoals"
						placeHolder="Workout Goals" class="form-control" /></td>
				</div>
			</tr>
			<tr>
				<div class="form-group">
					<th><label for="workoutprofile">Workout Profile: </label></th>
					<td><input type="text" id="workoutProfile"
						name="workoutProfile" placeHolder="Workout Profile"
						class="form-control" /></td>
				</div>
			</tr>
		</table>
		<div class="btn-signup">
		<button type="submit">Create User</button>
</div>
</form>

<div class="workout-companion-header">
	<h4>THE ULTIMATE WORKOUT COMPANION</h4>
	<p>Sign up to begin your journey!</p>
</div>
</div>

<c:import url="/WEB-INF/jsp/footer.jsp" />