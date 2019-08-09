<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" /> 

<style>
#workout-table{
	background-color: rgba(255, 98, 4, 0.8700000047683716);
	border: 1px solid black;
	margin-right: 25%;
	text-align: center;
	margin-left: 25%;
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
	color: white;
}

ul {
	display:inline-block;
    vertical-align: top;
}

#class-name{
	font-size: 25px;
	border-bottom: 1px solid black;
}





</style>





		

<div id="workout-table">
		<h1>Thursday</h1>
	<c:forEach var="clazz" items="${calendar}" begin="0" end="4" > 
	<ul style="list-style: none;">
		<li id="class-name">${clazz.name}</li>
		<li id="class-start-time"><b>Start Time:</b> ${clazz.classStartTime}</li>
		<li><b>End Time:</b> ${clazz.classEndTime}</li>
	</ul>
	</c:forEach>
</div>	
	
<div id="workout-table">
		<h1>Friday</h1>
	<c:forEach var="clazz" items="${calendar}" begin="5" end="9" > 
	<ul style="list-style: none;">
		<li id="class-name">${clazz.name}</li>
		<li><b>Start Time:</b> ${clazz.classStartTime}</li>
		<li><b>End Time:</b> ${clazz.classEndTime}</li>
	</ul>
	</c:forEach>
</div>

<div id="workout-table">
		<h1>Saturday</h1>
	<c:forEach var="clazz" items="${calendar}" begin="5" end="9" > 
	<ul style="list-style: none;">
		<li id="class-name">${clazz.name}</li>
		<li><b>Start Time:</b> ${clazz.classStartTime}</li>
		<li><b>End Time:</b> ${clazz.classEndTime}</li>
	</ul>
	</c:forEach>
</div>

<div id="workout-table">
		<h1>Sunday</h1>
	<c:forEach var="clazz" items="${calendar}" begin="5" end="9" > 
	<ul style="list-style: none;">
		<li id="class-name">${clazz.name}</li>
		<li><b>Start Time:</b> ${clazz.classStartTime}</li>
		<li><b>End Time:</b> ${clazz.classEndTime}</li>
	</ul>
	</c:forEach>
</div>

<div id="workout-table">
		<h1>Monday</h1>
	<c:forEach var="clazz" items="${calendar}" begin="5" end="9" > 
	<ul style="list-style: none;">
		<li id="class-name">${clazz.name}</li>
		<li><b>Start Time:</b> ${clazz.classStartTime}</li>
		<li><b>End Time:</b> ${clazz.classEndTime}</li>
	</ul>
	</c:forEach>
</div>



<%-- 

 <div id="table-body">
	



	<table id="workout-table">
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
		
</div>  --%>




  

<c:import url="/WEB-INF/jsp/footer.jsp" /> 

  