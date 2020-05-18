<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>


<head>
<title>Clinic Services!</title>

<link rel="icon"
	href="${pageContext.request.contextPath}/resources/dento/img/core-img/favicon.ico" />

<!-- reference our style sheet -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/dento/style.css" />

<style>
ul li {
	margin-top: 20px;
}
.header{
            text-align: center;
            font-family: tahoma;
            background-color: lightblue;
            padding: 10px;
            text-shadow: 2px 2px 2px grey;
            margin:18px;
            font-color:white;
}

.custom{
 width: 35%;
 height:110px;
 background-color: #00aeef;
 text-shadow: 2px 2px 2px grey;
 text-align:center;
 margin: 0 auto;
 padding:5px 5px;
 border-radius:50px;
}

h5{
  font-family: Arial, Helvetica, sans-serif;

}
</style>

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/bootstrap-4.3.1/bootstrap-4.3.1/dist/css/bootstrap.css" />


</head>

<body>

	<!-- Preloader -->
	<div id="preloader">
		<div class="preload-content">
			<div id="dento-load"></div>
		</div>
	</div>


	<div class="main-header-area">
		<div class="classy-nav-container breakpoint-off">
			<div class="container-fluied">

				<nav class=" classy-navbar justify-content-between" id="dentoNav">

					<div class="classy-navbar-toggler">
						<span class="navbarToggler"><span></span><span></span><span></span></span>
					</div>
					<div class="classynav">
						<span id="img" style="margin-top: 4px;">
						<img 
							src="${pageContext.request.contextPath}/resources/dento/img/core-img/logo.png"
							alt="">
						</span>
						<ul id="nav">

							<li><a href="/clinical-dental-system">Home</a></li>
							<li><a href="/clinical-dental-system/patient/searchForm">Search</a></li>

						</ul>
					</div>
				</nav>
					
			</div>

		</div>
	</div>
<!-- 
  <div class="breadcumb-area bg-img bg-gradient-overlay" style="margin:5px 19px; background-image: url(${pageContext.request.contextPath}/resources/dento/img/bg-img/12.jpg);">
    <div class="container h-100">
      <div class="row h-100 align-items-center">
        <div class="col-12">
          <h2 class="title">Services</h2>
        </div>
      </div>
    </div>
  </div>
 -->
 
 	<h3 class="header"> Our Services!</h3>

	<section class="dento-pricing-table-area">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div class="dento-price-table table-responsive">
						<table class="table table-borderless mb-0">
							<thead>
								<tr>
									<th scope="col">Service</th>
									<th scope="col">Price</th>
									<th scope="col">Action</th>
									
								</tr>
							</thead>
							<tbody>
								<c:forEach var="service" items="${services }">
									<c:url var="updateLink" value="/service/showFormForUpdate">
										<c:param name="serviceId" value="${service.id}" />
									</c:url>

									<c:url var="deleteLink" value="/service/delete">
										<c:param name="serviceId" value="${service.id}" />
									</c:url>
									
									<tr>
										<th scope="row">${service.service }</th>
										<td>${service.price }</td>
										<td>
											<a class="btn btn-danger btn-md" href="${updateLink}">Update</a> ||
											<a class="btn btn-danger btn-md" href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a> 
										</td>
										
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>

				<c:url var="Add" value="/service/serviceForm">
				</c:url>


				<div class="col-12">
					<div class="more-btn text-center mt-30">
						<a href="${Add}" class="btn btn-primary btn-lg btn-block">Add
							Service</a>
					</div>
				</div>
			</div>
		</div>
	</section>


	<script
		src="${pageContext.request.contextPath}/resources/bootstrap/jquery-3.4.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/bootstrap/popper.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/bootstrap-4.3.1/bootstrap-4.3.1/dist/js/bootstrap.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/dento/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/dento/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/dento/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/dento/js/dento.bundle.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/dento/js/default-assets/active.js"></script>


</body>

</html>
