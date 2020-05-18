<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>

<title>Save/Update Service</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/dento/img/core-img/favicon.ico" />

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/bootstrap-4.3.1/bootstrap-4.3.1/dist/css/bootstrap.css" />
	
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body >


	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div id="AlertDiv" class="card-header">
						<h1 style="text-align:center">Add Service</h1>
					</div>
					<div class="card-body">

						<form:form action="saveService" modelAttribute="service"
							method="POST">

							<form:hidden path="id" />

							<div class="form-group">
								<label for="service" class="cols-sm-2 control-label"> Service Name</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-user fa" aria-hidden="true"></i></span>
										<form:input path="service" type="text" class="form-control"
											placeholder="Enter Serive Name" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="price" class="cols-sm-2 control-label">Price</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
										<form:input path="price" type="text" class="form-control"
											name="price" id="price" placeholder="Enter Service Price" />
									</div>
								</div>
							</div>

							<br />
							<br />
							<div class="form-group">
								<input type="submit" value="Add"
									class="btn btn-primary btn-lg btn-block login-button" />
							</div>

						</form:form>
					</div>

				</div>
			</div>
		</div>
	</div>

	<script
		src="${pageContext.request.contextPath}/resources/bootstrap/jquery-3.4.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/bootstrap/popper.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/bootstrap-4.3.1/bootstrap-4.3.1/dist/js/bootstrap.js"></script>


</body>

</html>