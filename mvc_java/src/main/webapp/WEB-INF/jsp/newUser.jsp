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
													minlength : 5,
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

<div class="newUserContainer">
	<div class="create-member">
		<div class="member-form">
			<c:url var="formAction" value="/users" />
			<form method="POST" action="${formAction}">
				<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" /> <input
					type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
				<div>
					<input type="text" id="userName" name="userName"
						placeHolder="User Name" class="newUserNameInput" />
				</div>
				<div>
					<input type="password" id="password" name="password"
						placeHolder="Password" class="newUserPassword" />
				</div>
				<div>
					<input type="password" id="confirmPassword" name="confirmPassword"
						placeHolder="Re-Type Password" class="newUserConfirmPassword" />
				</div>
				<div>
					<input type="text" id="name" name="name" placeHolder="Your name"
						class="newUserName" />
				</div>
				<div>
					<input type="email" id="email" name="email"
						placeHolder="Email address" class="newUserEmail" />
				</div>
				<div>
					<input type="text" id="workoutGoals" name="workoutGoals"
						placeHolder="Workout Goals" class="newUserWorkoutGoals" />
				</div>
				<div>
					<input type="text" id="workoutProfile" name="workoutProfile"
						placeHolder="Workout Profile" class="newUserWorkoutProfile" />
				</div>
				<div class="avatarRadioGroup">
					<table>
						<tr>
							<div class="avatarLabel">
								<th><label for="avatar">Avatars</label></th>
							</div>
						</tr>
						<div class="boxingAvatar">
							<td><input type="radio" id="avatar" name="avatar"
								value="../img/boxing.png" /> <img src="../img/boxing.png" /></td>
						</div>
						<div class="liftingAvatar">
							<td><input type="radio" id="avatar" name="avatar"
								value="../img/lifting.png" /> <img src="../img/lifting.png" /></td>
						</div>
						<div class="pushUpAvatar">
							<td><input type="radio" id="avatar" name="avatar"
								value="../img/pushUp.png" /> <img src="../img/pushUp.png" /></td>
						</div>
						<div class="boxingAvatar">
							<td><input type="radio" id="avatar" name="avatar"
								value="../img/running.png" /> <img src="../img/running.png" /></td>
						</div>
						<div class="yogaAvatar">
							<td><input type="radio" id="avatar" name="avatar"
								value="../img/yoga.png" /> <img src="../img/yoga.png" /></td>
						</div>
					</table>
				</div>
				<button type="submit" class="createNewUserBTN">Create User</button>
			</form>
		</div>
	</div>
</div>

<c:import url="/WEB-INF/jsp/footer.jsp" />