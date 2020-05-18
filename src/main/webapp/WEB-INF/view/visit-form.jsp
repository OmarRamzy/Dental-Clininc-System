<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>

<title>Save Visit</title>
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
						<h1 style="text-align:center">Add visit</h1>
					</div>
					<div class="card-body">

						<form:form action="saveVisit/${patient.id}" modelAttribute="visit"
							method="POST">

							<form:hidden path="id" />	
							<form:hidden id="diagnosis" path="diagnosis"/>						
							
							<div class="form-group">
								<label for="name" class="cols-sm-2 control-label"> Diagnosis Select</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-user fa" aria-hidden="true"></i></span>
             				     <select id="mySelect" onChange="getValue(this)" class="form-control">
                			     <option class="form-contol" value = "NONE" label = "Select"/>
                			     
                			     	<c:forEach var="service" items="${services}"> 
     				 					 <option class="form-contol" value="${service.price}">${service.service}</option>
     				 			 	</c:forEach>
                  				 </select>     	
				
									</div>
								</div>
							</div>
							
							
							<div class="form-group">
								<label for="phone" class="cols-sm-2 control-label">Date</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
										<form:input path="date" type="text" class="form-control"
											name="date" id="phone" placeholder="Dade" value="${date}" />
									</div>
								</div>
							</div>

							<div class="form-group">
								<label for="payment" class="cols-sm-2 control-label">Payment</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
										<form:input path="payment" type="number" class="form-control"
											name="payment" id="payment" placeholder="Payment" />
									</div>
								</div>
							</div>

							<div class="form-group">
								<label for="payment" class="cols-sm-2 control-label">Payed</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
										<form:input path="payed" type="number" class="form-control"
											name="payed" id="payed" placeholder="Payed" />
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
	
	 <script type="text/javascript">

	 function getValue(obj)
 	 {
		let payment= document.querySelector('#payment');
		payment.value=obj.value;
  		var x = document.getElementById("mySelect").selectedIndex;
		let diagonsis= document.querySelector('#diagnosis');
		diagonsis.value=document.getElementsByTagName("option")[x].label;
		console.log(diagonsis.value);

  		
 	}
 
</script>
	

	<script
		src="${pageContext.request.contextPath}/resources/bootstrap/jquery-3.4.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/bootstrap/popper.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/bootstrap-4.3.1/bootstrap-4.3.1/dist/js/bootstrap.js"></script>


</body>

</html>