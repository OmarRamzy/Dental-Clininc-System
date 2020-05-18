<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>

<title>Patients List</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/dento/img/core-img/favicon.ico" />

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/bootstrap-4.3.1/bootstrap-4.3.1/dist/css/bootstrap.css" />
	
		  <link rel="stylesheet" 
	href="${pageContext.request.contextPath}/resources/dento/style.css" />
	

	<style>
		ul li {
		margin:5px;}
	</style>

</head>

<body>


	
	    <div class="main-header-area">
      <div class="classy-nav-container breakpoint-off">
        <div class="container-fluied">
          <nav class="classy-navbar justify-content-between" id="dentoNav">

            <div class="classy-navbar-toggler">
              <span class="navbarToggler"><span></span><span></span><span></span></span>
            </div>
              <div class="classynav" >
			     
			      <img style="margin-top:-20px;" src="${pageContext.request.contextPath}/resources/dento/img/core-img/logo.png" alt="">
                <ul  id="nav"  >
				  
				   <li><a href="/clinical-dental-system">Home</a></li>
				   <li><a href="searchForm">Search</a></li>
				  
                </ul>
              </div>
            </div>

          </nav>
        </div>
      </div>
	

	<br>

	<table class="table table-hover table-primary">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">Name</th>
				<th scope="col">Phone</th>
				<th scope="col">Address</th>
				<th scope="col"> Action </th>
			</tr>
		</thead>
		<tbody>

			<c:forEach var="patient" items="${patients}" varStatus="loopCounter">
			
				<c:url var="updateLink" value="/patient/showFormForUpdate">
					<c:param name="patientId" value="${patient.id}" />
				</c:url>

				<!-- construct an "delete" link with customer id -->
				<c:url var="deleteLink" value="/patient/delete">
					<c:param name="patientId" value="${patient.id}" />
				</c:url>
				<c:url var="viewVisitsLink" value="/patient/viewVisits/${patient.id}">
			
				</c:url>


				<tr>
					<td>${loopCounter.count}</td>
					<td>${patient.fullName }</td>
					<td>${patient.phone }</td>
					<td>${patient.city}</td>
					<td>
					<a class="btn btn-danger btn-sm" href="${updateLink}">Update</a> || 
					<a class="btn btn-danger btn-sm" href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
					||	<a class="btn btn-danger btn-sm" href="${viewVisitsLink}">Visits</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>



	<script
		src="${pageContext.request.contextPath}/resources/bootstrap/jquery-3.4.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/bootstrap/popper.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/bootstrap-4.3.1/bootstrap-4.3.1/dist/js/bootstrap.js"></script>


</body>

</html>