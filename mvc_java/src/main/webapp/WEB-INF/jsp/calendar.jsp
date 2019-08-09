<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" /> 

<style>
#workout-table{
	background-color: rgba(255, 98, 4, 0.8700000047683716);
	border: 1px solid black;
}

table{
	margin-right: auto;
	margin-left: auto; 
}

td {
	border: 1px solid black;
}

h1 {
	margin-right: auto;
	margin-left: auto; 
	color: rgba(255, 98, 4, 0.8700000047683716);
}

</style>

<%-- .grid-container-class-schedual {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
  grid-template-rows: 1fr 1fr 1fr;
  grid-template-areas: ". . . . ." ". TableName Class Class ." ". . . . .";
  background-color: rgba(255, 98, 4, 0.8700000047683716);
}

.TableName {
  display: grid;
  grid-template-columns: 1fr 1.1fr 0.9fr;
  grid-template-rows: 1fr 1fr;
  grid-template-areas: "Day Day Day" "Time Time Time";
  grid-area: TableName;
}

.Day { grid-area: Day; }

.Time {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  grid-template-rows: 1fr 1fr;
  grid-template-areas: "Start-Time Start-Time Start-Time" "End-Time End-Time End-Time";
  grid-area: Time;
}

.Start-Time { grid-area: Start-Time; }

.End-Time { grid-area: End-Time; }

.Class {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  grid-template-rows: 1fr 1fr;
  grid-template-areas: ". . ." "Class-Name  Class-Name  Class-Name ";
  grid-area: Class;
}

.Class-Name  { grid-area: Class-Name ; }






<div class="grid-container-class-schedual">
  <div class="TableName">
    <div class="Day">
    	<h3>Thursday</h3>
    </div>
<c:forEach var="clazz" items="${calendar}" begin="0" end="4" > 
    <div class="Time">
      <div class="Start-Time">
      	${clazz.classStartTime}
      </div>
      <div class="End-Time">
      	${clazz.classEndTime}
      </div>
    </div>
  </div>
  <div class="Class">
    <div class="Class-Name ">
    	${clazz.name}
    </div>
    
  </div>

</div> --%>


 <div id="table-body">
	
	<table id="workout-table" >
	<h1>Thursday</h1>
		<tr>
			<th>Class</th>
			<th>Start Time</th>
			<th>End Time</th>
		</tr>
	<c:forEach var="clazz" items="${calendar}" begin="5" end="9" > 
		<tr>
			<td>${clazz.name}</td>
			<td>${clazz.classStartTime}</td>
			<td>${clazz.classEndTime}</td>
		</tr>
	</c:forEach>
	</table>

		
	<table id="workout-table" >
	<h1>Friday</h1>
		<tr>
			<th>Class</th>
			<th>Start Time</th>
			<th>End Time</th>
		</tr>
	<c:forEach var="clazz" items="${calendar}" begin="5" end="9" > 
		<tr>
			<td>${clazz.name}</td>
			<td>${clazz.classStartTime}</td>
			<td>${clazz.classEndTime}</td>
		</tr>
	</c:forEach>
	</table>
	
	<table id="workout-table" >
	
	<h1> Saturday </h1>
		<tr>
			
			<th>Class</th>
			<th>Start Time</th>
			<th>End Time</th>
		</tr>
	<c:forEach var="clazz" items="${calendar}" begin="10" end="14" > 
		<tr>
			
			<td>${clazz.name}</td>
			<td>${clazz.classStartTime}</td>
			<td>${clazz.classEndTime}</td>
		</tr>
	</c:forEach>
	
	</table>
	
	<table id="workout-table" >
	
	<h1> Sunday </h1>
		<tr>
			
			<th>Class</th>
			<th>Start Time</th>
			<th>End Time</th>
		</tr>
	<c:forEach var="clazz" items="${calendar}" begin="10" end="14" > 
		<tr>
			
			<td>${clazz.name}</td>
			<td>${clazz.classStartTime}</td>
			<td>${clazz.classEndTime}</td>
		</tr>
	</c:forEach>
	
	</table>
	
	<table id="workout-table" >
	
	<h1> Monday </h1>
		<tr>
			
			<th>Class</th>
			<th>Start Time</th>
			<th>End Time</th>
		</tr>
	<c:forEach var="clazz" items="${calendar}" begin="15" end="19" > 
		<tr>
			
			<td>${clazz.name}</td>
			<td>${clazz.classStartTime}</td>
			<td>${clazz.classEndTime}</td>
		</tr>
	</c:forEach>
	
	</table>
		
</div> 




  

<c:import url="/WEB-INF/jsp/footer.jsp" /> 

  