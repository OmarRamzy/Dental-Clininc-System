<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>
<title>Home Page</title>

  <link rel="icon" 
  href="${pageContext.request.contextPath}/resources/dento/img/core-img/favicon.ico"/>
  

  <link rel="stylesheet" 
	href="${pageContext.request.contextPath}/resources/dento/style.css" />


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


  <!-- ***** Welcome Area Start ***** -->
  <section class="welcome-area">
    <!-- Welcome Slides -->
    <div class="welcome-slides owl-carousel">
      <!-- Single Welcome Slide -->
      <div class="welcome-welcome-slide bg-img bg-gradient-overlay jarallax"
       style="background-image: url(${pageContext.request.contextPath}/resources/dento/img/bg-img/1.jpg);">
        <div class="container h-100">
          <div class="row h-70 align-items-center">
            <div class="col-12">
              <!-- Welcome Text -->
              <div class="welcome-text text-center">
                <h2 data-animation="fadeInUp" data-delay="1000ms">We Believe Everyone Should Have Easy Access To Great Dental Care</h2>
                <p data-animation="fadeInUp" data-delay="3000ms">Dr. AbdelRahman Clinic is opening up exciting new opportunities for dental professionals.
                												 Contact us to find out what we have to offer to you.
                </p>
                <div class="welcome-btn-group">
                  <a href="patient/showFormForAdd" class="btn btn-primary btn-lg btn-block" data-animation="fadeInUp" data-delay="500ms">Register Patient</a>
                 	<br/>
                  <a href="patient/searchForm" class="btn btn-primary btn-lg btn-block" data-animation="fadeInUp" data-delay="700ms">Search for Patient</a>
                                    					<br>
                  <a href="patient/list" class="btn btn-primary btn-lg btn-block active" data-animation="fadeInDown" data-delay="700ms">List All Patient</a>
					<br>
				    <a href="service/list" class="btn btn-primary btn-lg btn-block active" data-animation="fadeInDown" data-delay="700ms">Our Services</a>
					                  
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Single Welcome Slide -->
      <div class="welcome-welcome-slide bg-img bg-gradient-overlay jarallax" 
      style="background-image: url(${pageContext.request.contextPath}/resources/dento/img/bg-img/2.jpg);">
        <div class="container h-70">
          <div class="row h-100 align-items-center">
            <div class="col-12">
              <div class="welcome-text text-center">
                <h2 data-animation="fadeInDown" data-delay="100ms">We Believe Everyone Should Have Easy Access To Great Dental Care</h2>
                <p data-animation="fadeInDown" data-delay="300ms">Dr. AbdelRahman Clinic is opening up exciting new opportunities for dental professionals.
                												 Contact us to find out what we have to offer to you.</p>
                <div class="welcome-btn-group">
                  <a href="patient/showFormForAdd" class="btn btn-primary btn-lg btn-block" data-animation="fadeInDown" data-delay="500ms">Register Patient</a>
                                  	<br/>                 
                  <a href="patient/searchForm" class="btn btn-primary btn-lg btn-block active" data-animation="fadeInDown" data-delay="700ms">Search for Patient</a>
                  					<br>
                  <a href="patient/list" class="btn btn-primary btn-lg btn-block active" data-animation="fadeInDown" data-delay="700ms">List All Patient</a>
                  									<br>
				    <a href="service/list" class="btn btn-primary btn-lg btn-block active" data-animation="fadeInDown" data-delay="700ms">Our Services</a>
                  					
                </div>
              </div>
            </div>
          </div>
        </div>
      </div> 
    </div>
  </section>
	
	
	  <!-- ******* All JS ******* -->
  <script src="${pageContext.request.contextPath}/resources/dento/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/dento/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/dento/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/dento/js/dento.bundle.js"></script>
  <script src="${pageContext.request.contextPath}/resources/dento/js/default-assets/active.js"></script>
	


</body>

</html>