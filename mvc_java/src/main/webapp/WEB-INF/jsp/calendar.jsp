<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" /> 


<style>
* {box-sizing: border-box;}
ul {list-style-type: none;}

h1 {
	color: rgba(255, 98, 4, 0.8700000047683716);
}

body {

	font-family: Verdana, sans-serif;
	padding-left: 150px;
    padding-right: 150px;
    

}

.month {
  padding: 70px 25px;
  width: 100%;
  background: rgba(255, 98, 4, 0.8700000047683716);
  text-align: center;
}

.month ul {
  margin: 0;
  padding: 0;
}

.month ul li {
  color: white;
  font-size: 50px;
  text-transform: uppercase;
  letter-spacing: 3px;
}

.month .prev {
  float: left;
  padding-top: 10px;
}

.month .next {
  float: right;
  padding-top: 10px;
}

.weekdays {
  margin: 0;
  padding: 10px 0;
  background-color: #ddd;
}

.weekdays li {
  display: inline-block;
  width: 13.6%;
  color: #666;
  text-align: center;
}

.days {
  padding: 10px 0;
  background: #eee;
  margin: 0;
}

.days li {
  list-style-type: none;
  display: inline-block;
  width: 13.6%;
  text-align: center;
  margin-bottom: 20px;
  margin-top: 20px;
  font-size:22px;
  color: #777;
}

.days li .active {
  padding: 5px;
  background: rgba(255, 98, 4, 0.8700000047683716);
  color: white !important
}

/* Add media queries for smaller screens */
@media screen and (max-width:720px) {
  .weekdays li, .days li {width: 13.1%;}
}

@media screen and (max-width: 420px) {
  .weekdays li, .days li {width: 12.5%;}
  .days li .active {padding: 2px;}
}

@media screen and (max-width: 290px) {
  .weekdays li, .days li {width: 12.2%;}
}
</style>
</head>
<body>

<h1>Class Schedule</h1>

<div class="month">      
  <ul>

    <li>
      August<br>
      <span style="font-size:33px">2019</span>
    </li>
  </ul>
</div>

<ul class="weekdays">
	<li>Su</li>
  <li>Mo</li>
  <li>Tu</li>
  <li>We</li>
  <li>Th</li>
  <li>Fr</li>
  <li>Sa</li>
  
</ul>

<ul class="days">  
<li></li>
<li></li>
<li></li>
<li></li>
  <li>1</li>
  <li>2 </li>
  <li>3</li>
  <li>4</li>
  <li>5</li>
  <li>6</li>
  <li>7</li>
  <li>8</li>
  <li>9</li>
  <li>10</li>
  <li>11</li>
  <li>12</li>
  <li>13</li>
  <li>14</li>
  <li>15</li>
  <li><span class="active">16</span></li>
  <li>17</li>
  <li>18</li>
  <li>19</li>
  <li>20</li>
  <li>21</li>
  <li>22</li>
  <li>23</li>
  <li>24</li>
  <li>25</li>
  <li>26</li>
  <li>27</li>
  <li>28</li>
  <li>29</li>
  <li>30</li>
  <li>31</li>
</ul>

</body>

<c:import url="/WEB-INF/jsp/footer.jsp" /> 

  