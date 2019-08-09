<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<script type="text/javascript">
	$(document).ready(function() {

		$("form").validate({

			rules : {
				userName : {
					required : true
				},
				password : {
					required : true
				}
			},
			messages : {
				confirmPassword : {
					equalTo : "Passwords do not match"
				}
			},
			errorClass : "error"
		});
	});
</script>
<div class="container">
	<div class="login-header">
		<div class="login">
			<c:url var="formAction" value="/login" />

			<form method="POST" action="${formAction}">
				<input type="hidden" name="destination" value="${param.destination}" />
				<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
				<div class="loginTextField">
					<div>
						<input type="text" id="userNameInput" name="userNameInput"
							placeHolder="User Name" class="userNameInput" />
					</div>
					<div>
						<input type="password" id="passwordInput" name="passwordInput"
							placeHolder="Password" class="passwordInput" />
					</div>
					<div>
						<button type="submit" class="loginSubmitBTN">Login</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<div class="workout-companion-header">
		<h4>THE ULTIMATE WORKOUT COMPANION</h4>
		<p>Let us help you get in the best shape of your life.</p>
		<div class="signup">
			<h6>SIGNUP NOW</h6>
		</div>
	</div>
</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />