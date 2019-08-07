<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" /> 

 <div>
	<c:url var="formAction" value="/users/" />
 </div>
 
<div class="grid-container">
  <div class="Member">
    <div class="Avatar">
     <img src="#" alt="Avatar Image" >
    </div>
    <div class="Member-Links">
    <h2> Member Name </h2>
    <h2> Workout Profile </h2>
    <h2> Workout Goals </h2>
    
    <form action="/my/link/location" method="get">
	    <input type="submit" value="Go to my link location" 
	         name="Submit" id="frm1_submit" />
	</form>
    <button> Edit Profile</button>
    </div>
    <div class="Admin-buttons">
    	<h1> Add Employee </h1>
    	<h2> Add Member </h2>
    	<h2> All User Details</h2>
    </div>
  </div>
  <div class="Start-Workout">
    <div class="Start-Workout-Button">
    	<button> Start Workout! </button>
    </div>
    <div class="End-Workout-Button">
    	<button> End Workout! </button>
    	
    </div>
  </div>
  <div class="Member-Analytics">
  	<h1> Member Analytics </h1>
  </div>
</div>

<c:import url="/WEB-INF/jsp/footer.jsp" /> 


