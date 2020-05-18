<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>

<title>Search for Patient </title>
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/dento/img/core-img/favicon.ico" />

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/bootstrap-4.3.1/bootstrap-4.3.1/dist/css/bootstrap.css" />
	
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />

	
	
<style>
	i{
		display:flex;
		flex-direction: column;
		margin: 2px;
		text-align:center;
		color:red;
	}
</style>


</head>

<body >


	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div id="AlertDiv" class="card-header">
						<h1>Search For Patient</h1>
					</div>
					<div class="card-body">

						<form:form action="searchForPatient"
							method="POST">

						 <c:if test="${NotFound == true}"> 
						 	<i class="faild" > Patient Not Exist! 
						 	<br> Try to check if the name is correct or Add the patient to System.
						 	 <br>  
						     	<a href="showFormForAdd" class="btn btn-danger">Register</a>
						     <br/>
						 	 </i>
						 	<br>
						 </c:if>	
							
							<div class="form-group">
								<label for="name" class="cols-sm-2 control-label"> Patient Name</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon">
										<i class="fa fa-user fa" aria-hidden="true"></i></span>
										<input type="text" class="form-control"
											placeholder="Enter Patient Name" name="patientName" />
									</div>
								</div>
							</div>
								<br />
							<div class="form-group">
								<input type="submit" value="Search"
									class="btn btn-primary btn-lg btn-block login-button" />
							</div>

						</form:form>
					</div>
					
				</div>
				<div style="margin-top:20px;">	 <a  class="btn btn-danger btn-lg btn-block login-button" href="/clinical-dental-system">Home</a>
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