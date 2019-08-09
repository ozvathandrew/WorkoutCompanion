<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" /> 

<style>


</style>

<c:forEach var="clazz" items="${calendar}"> 
  <li>${clazz.classTime }</li>
  <li>${clazz.name}</li>
  </div>
</c:forEach>


<table id="workout-table" >
	<tr>
		<th>Date</th>
		<th>Class</th>
		<th>Start Time</th>
		<th>End Time</th>
	</tr>


</table>



  

<c:import url="/WEB-INF/jsp/footer.jsp" /> 

  