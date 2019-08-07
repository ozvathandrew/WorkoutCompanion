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
    <h2> Hello, ${user.name} </h2>
    <h2> ${user.workoutGoals} </h2>
    <h2> ${user.workoutProfile}</h2>
    
    <form action="../editProfile" method="get">
		<button> Edit Profile</button>
	</form>
    
    </div>
    <div class="admin-buttons">
    	<h1> Add Employee </h1>
    	<h2> Add Member </h2>
    	<h2> All User Details</h2>
    </div>
  </div>
  <div class="start-workout">
    <div class="start-workout-button">
    	<button> Start Workout! </button>
    </div>
    <div class="end-workout-button">
    	<button> End Workout! </button>
    	
    </div>
  </div>
  <div class="member-analytics">
  	<h1> Member Analytics </h1>
  </div>
</div>

<c:import url="/WEB-INF/jsp/footer.jsp" /> 


