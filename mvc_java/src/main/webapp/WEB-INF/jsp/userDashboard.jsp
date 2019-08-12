<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />
<body onload="document.getElementById('defaultOpen').click();">
<script type="text/javascript">

function openCity(evt, cityName) {
	  // Declare all variables
	  let i, tabcontent, tablinks;

	  // Get all elements with class="tabcontent" and hide them
	  tabcontent = document.getElementsByClassName("tabcontent");
	  for (i = 0; i < tabcontent.length; i++) {
	    tabcontent[i].style.display = "none";
	  }

	  // Get all elements with class="tablinks" and remove the class "active"
	  tablinks = document.getElementsByClassName("tablinks");
	  for (i = 0; i < tablinks.length; i++) {
	    tablinks[i].className = tablinks[i].className.replace(" active", "");
	  }

	  // Show the current tab, and add an "active" class to the button that opened the tab
	  document.getElementById(cityName).style.display = "block";
	  evt.currentTarget.className += " active";
	  
	}
document.getElementById("defaultOpen").click();
</script>
<div>
	<c:url var="formAction" value="/users/" />
</div>

<div class="grid-container">
<<<<<<< HEAD
  <div class="member">
    <div class="avatar">
     <img src="${user.avatar}" alt="avatar image" >
    </div>
    <div class="member-Links">
    <h4> Hello, ${user.name} </h4>
    <h6> ${user.workoutGoals} </h6>
    <h6> ${user.workoutProfile}</h6>
    </div>
    
    <div class="admin-buttons">
    	<h4><a href="/capstone/addUser">Add New User </a></h4>
    </div>
  </div>
  <div class="start-workout">
    <div class="start-workout-button">
    <form action="../gymSessionLog" method="get">
    	<button> Start Workout! </button>
    		</form>
    </div>
    <div class="edit-profile-button">
    <form action="../editProfile" method="get">
		<button> Edit Profile</button>
	</form>
=======
	<div class="member">
		<div class="avatar">
			<img src="${user.avatar}" alt="avatar image">
		</div>
		<div class="member-Links">
			<h4>${user.name}</h4>
			<h6>Goal: ${user.workoutGoals}</h6>
			<h6>Summary: ${user.workoutProfile}</h6>
		</div>

		<div class="admin-buttons">
			<form action="../addUser" method="GET">
				<button>Add Employee</button>
			</form>
			<button>Add Member</button>
		</div>
		<div class="edit-profile-button">
			<form action="../editProfile" method="get">
				<button>Edit Profile</button>
			</form>
		</div>
		<div class="calendar-button">
			<form action="../calendar" method="get">
				<button>View Class Calendar</button>
			</form>
		</div>
	</div>
	<div class="start-workout">
			<form action="../gymSessionLog" method="get">
				<button>Start Workout!</button>
			</form>
	</div>
	<div class="member-analytics">
			<!-- Tab links -->
			<div class="tab">
				<button class="tablinks active" onclick="openCity(event, 'Monthly')" id="defaultOpen">Monthly</button>
				<button class="tablinks" onclick="openCity(event, 'Total')">Total</button>
				<button class="tablinks" onclick="openCity(event, 'Employee')">Employee</button>
			</div>
		
			<!-- Tab Monthly content -->
			<div id="Monthly" class="tabcontent">
			
			<table>
				<tr>
					<th>Date</th>
					<th>Duration</th>
					<th>Sets</th>
					<th>Reps</th>
					<th>Weights</th>
				</tr>
				<c:forEach var="data" items="${gymSession}">
				<tr>
					<td>${data.date}</td>
					<td>${data.duration}</td>
					<td>${data.reps}</td>
					<td>${data.sets}</td>
					<td>${data.weights}</td>
				</tr>
				</c:forEach>
			</table>
		
			</div>

			<!-- Tab Total content -->
			<div id="Total" class="tabcontent">
		
			<table>
				<tr>
					<th>Date</th>
					<th>Start time</th>
					<th>End time</th>
					<th>Sets</th>
					<th>Reps</th>
					<th>Weights</th>
				</tr>
				<c:forEach var="total" items="${allSessions}">
				<tr>
					<td>${total.date}</td>
					<td>${total.start}</td>
					<td>${total.end}</td>
					<td>${total.sets}</td>
					<td>${total.reps}</td>
					<td>${total.weights}</td>
				</tr>
				</c:forEach>
			</table>
			
			</div>
			
		<!-- Tab Employee content -->
			<div id="Employee" class="tabcontent">
				<h3>Employee</h3>
				<p>Employee data lives here</p>
			</div>

		
>>>>>>> a285f5a506c016098246807f9223cb2ab3d8b3b6
	</div>
</div>

<c:import url="/WEB-INF/jsp/footer.jsp" />


