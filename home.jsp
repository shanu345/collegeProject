<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


  <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">
  <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">

  <link rel="stylesheet" href="css/jquery.fancybox.min.css">

  <link rel="stylesheet" href="css/bootstrap-datepicker.css">

  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="css/aos.css">
  <link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="css/style.css">
</head>
<body>
<jsp:include page="menubar.jsp"></jsp:include>
    <div class="hero-slide owl-carousel site-blocks-cover">
      <div class="intro-section" style="background-image: url('images/csss.jpg');">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-12 mx-auto text-center" data-aos="fade-up">
              <h1>GARGI MEMORIAL INSTITUTE OF TECHNOLOGY</h1>
            </div>
          </div>
        </div>
      </div>

      <div class="intro-section" style="background-image: url('images/csss.jpg');">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-12 mx-auto text-center" data-aos="fade-up">
              <h1>Career Development Cell</h1>
            </div>
          </div>
        </div>
      </div>

    </div>
    

    <div></div>

    <div class="site-section">
      <div class="container">
        <div class="row mb-5 justify-content-center text-center">
          <div class="col-lg-4 mb-5">
            <h2 class="section-title-underline mb-5">
              <span>EVENT INFORMATION</span>
            </h2>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
            <div class="feature-1 border">
              <a><img src="images/cdc.jpg" alt="Image" class="img-fluid"></a>
            </div> 
          </div>
          <div class="col-lg-8 col-md-6 mb-8 mb-lg-0">
            <div class="feature-1 border">
              <table border="1" style="width:100%">
<tr>
<th>EVENT NAME</th>
<th><h1>${event.name}</h1></th>
</tr>
<tr>
<td>EVENT DATE</td>
<td><h1>${event.date}</h1></td>
</tr>
<tr>
<td>EVENT VENUE</td>
<td><h1>${event.venue}</h1></td>
</tr>
<tr>
<td> EVENT BUDGET</td>
<td><h1>${event.budget}</h1></td>
</tr>
<tr>
<th rowspan="3">SPEAKERS</th>
<td><h1>${event.spek1}</h1></td>
</tr>
<tr>
<td><h1>${event.spek2}</h1></td>
</tr>
<tr>
<td><h1>${event.spek3}</h1></td>
</tr>
<tr>
<td>EXPECTED OUTCOME</td>
<td><h1>${event.outcome}</h1></td>
</tr>
<tr>
<td>ACTUAL OUTCOME</td>
<td><h1>${event.day1}</h1></td>
</tr>
</table>             
            </div> 
          </div>
        </div>
      </div>
    </div>
    <div class="section-bg style-1" style="background-image: url('images/logo.png');">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <h2 class="section-title-underline style-2">
              <span>About our Career Development Cell</span>
            </h2>
          </div>
          <div class="col-lg-8">
          <p>CDC inauguration by vice chancellor,MAKAUT,Chairman GMIT G.L.Datta and Chairman PS Group,Pradip Chopra with CDC member at GMIT.</p>
           <a href="https://gmitkolkata.org">Read more</a>
          </div>
        </div>
      </div>
    </div>
    <div class="footer">
    <div class="site-section ftco-subscribe-1" style="background-image: url('images/about_1.jpg')">
      <div class="container">
        <div class="row">
          <div class="col-lg-3">
            <p class="mb-4"><img src="images/logo.png" alt="Image" class="img-fluid"></p>
            <a><img src="images/bg_1.jpg" alt="Image" class="img-fluid"></a>
          </div>
          <div class="col-lg-3">
            <h3 class="footer-heading"><span>Our Campus</span></h3>
            <ul class="list-unstyled">
                <li><a href="#">Acedemic</a></li>
                <li><a href="#">News</a></li>
                <li><a href="#">Our Interns</a></li>
                <li><a href="#">Our Leadership</a></li>
                <li><a href="#">Careers</a></li>
                <li><a href="#">Human Resources</a></li>
            </ul>
          </div>
          <div class="col-lg-3">
              <h3 class="footer-heading"><span>Our Courses</span></h3>
              <ul class="list-unstyled">
                  <li><a href="#">Computer Science Engineering</a></li>
                  <li><a href="#">Science &amp; Engineering</a></li>
                  <li><a href="#">Arts &amp; Humanities</a></li>
                  <li><a href="#">Mechanical</a></li>
                  <li><a href="#">Electronic Engineering</a></li>
                  <li><a href="#">Electrical Engineering</a></li>
                  <li><a href="#">Civil Engineering</a></li>
              </ul>
          </div>
          <div class="col-lg-3">
              <h3 class="footer-heading"><span>Contact</span></h3>
              <ul class="list-unstyled">
                  <li><a href="#">Help Center</a></li>
                  <li><a href="#">Support Community</a></li>
                  <li><a href="#">Press</a></li>
                  <li><a href="#">Share Your Story</a></li>
                  <li><a href="#">Our Supporters</a></li>
              </ul>
          </div>
        </div>
        </div>
      </div>
    </div>
  <!-- .site-wrap -->
  <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#51be78"/></svg></div>
  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.sticky.js"></script>
  <script src="js/jquery.mb.YTPlayer.min.js"></script>
  <script src="js/main.js"></script>

</body>
</html>