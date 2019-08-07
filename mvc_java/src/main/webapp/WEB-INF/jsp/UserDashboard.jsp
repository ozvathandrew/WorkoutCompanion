<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" /> 

 <div>
	<c:url var="formAction" value="/users/" />
 </div>
 
<div class="grid-container">
  <div class="Member">
    <div class="Avatar">
    	<h2> Avatar Image </h2>
    </div>
    
    <div class="Member-Links">
    	<h2> Member Links</h2>
    </div>
 
    <div class="Admin-buttons">
    
    </div>
  </div>
  
  <div class="Start-Workout\ ">
    <div class="Start-Workout">
    	<h2> Start Workout button</h2>
    </div>
    <div class="End-Workout">
    	<h2> End Workout Button</h2>
    </div>
  </div>
  <div class="Member-Analytics">
  	<h2> Member Analytics</h2>
  </div>
</div>

<c:import url="/WEB-INF/jsp/footer.jsp" /> 


