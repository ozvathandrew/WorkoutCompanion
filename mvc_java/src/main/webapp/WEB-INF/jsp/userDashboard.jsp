<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" /> 

 <div>
	<c:url var="formAction" value="/users/" />
 </div>
 
<div class="grid-container">
  <div class="member">
    <div class="avatar">
     <img src="#" alt="avatar image" >
    </div>
    <div class="member-Links">
    <h4> Hello, ${user.name} </h4>
    <h6> ${user.workoutGoals} </h6>
    <h6> ${user.workoutProfile}</h6>
    </div>
    
    <div class="admin-buttons">
    	<h4><a href="/capstone/addUser">Add Employee </a></h4>
    	<h4> Add Member </h4>
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
	</div>
	<div class="calendar-button">
	<form action="../calendar" method="get">
		<button> View Class Calendar </button>
	</form>
    </div>
  </div>
  <div class="member-analytics">
  <h4>Your gym session history: </h4>
  <c:forEach var="data" items="${gymSession}">
  <table>
  <tr>
  	<th>Date</th>
  	<th>Duration</th>
  	<th>Reps</th>
  	<th>Weights</th>
  </tr>
  <tr>
  	<td>${data.date}</td>
	<td>${data.duration}</td>
  	<td>${data.reps}</td>
  	<td>${data.sets}</td>
  	<td>${data.weights}</td>
  </tr>
  	</table>
  	</c:forEach>
  </div>
</div>

<c:import url="/WEB-INF/jsp/footer.jsp" /> 


