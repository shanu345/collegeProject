<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script src="js/validation.js"></script>
</head>
<body>
<div class="container">
 <jsp:include page="menubar.jsp"></jsp:include>
  <div class="row">
          <div class="col-md-6 col-sm-8 mx-auto">
               <div class="card">
                   <div class="card-body" style="background-color: #eeefff">
                        <div class="mt-2 text-center">
                             <h2>EditEventPages</h2>
                             <!--<h5 style="color: red;"> ${regsuccessmsg}</h5>-->
                         </div>
                   
                         <div class="mt-4">
                           <form action="event" method="post" name='registration' onSubmit="return checkgender();">
                             <div class="form-group">
                                 <label for="name" class="text-uppercase font-weight-bold text-primary">Event Name</label>
                                 <input type="text" class="form-control" id="name" name="name" placeholder="Enter Event Name" required="required" onblur="checkname()" onfocus= "clearname()">
                                 <div class="text-danger font-weight-bold" id="nameerrormessage"></div>
                             </div>
                             
                             <div class="form-group">
                                 <label for="date" class="text-uppercase font-weight-bold text-primary">Date</label>
                                 <input type="date" class="form-control" id="date" name="date" placeholder="Enter Your Date" required="required" onblur="checkdate()" onfocus= "cleardate()">
                             </div>
                             
                             <div class="form-group">
                                 <label for="venue" class="text-uppercase font-weight-bold text-primary">Venue</label>
                                 <input type="text" class="form-control" id="venue" name="venue" placeholder="Enter Venue Name" required="required" onblur="checkvenue()" onfocus= "clearvenue()">
                                 <div class="text-danger font-weight-bold" id="venueerrormessage"></div>
                             </div>
                             
                             <div class="form-group">
                                 <label for="budget" class="text-uppercase font-weight-bold text-primary">Budget</label>
                                 <input type="tel" class="form-control" id="budget" name="budget" placeholder="Enter Budget" required="required" onblur="checkbudget()" onfocus= "clearbudget()">
                                 <div class="text-danger font-weight-bold" id="budgeterrormessage"></div>
                             </div>
                            <div class="form-group">
                                 <label for="spek1" class="text-uppercase font-weight-bold text-primary">Speaker1</label>
                                 <input type="text" class="form-control" id="spek1" name="spek1" placeholder="Enter Speaker Name" required="required" onblur="checkspek1()" onfocus= "clearspek1()">
                                 <div class="text-danger font-weight-bold" id="spekerrormessage"></div>
                             </div>
                             <div class="form-group">
                                 <label for="spek2" class="text-uppercase font-weight-bold text-primary">Speaker2</label>
                                 <input type="text" class="form-control" id="spek2" name="spek2" placeholder="Enter Speaker Name" required="required" onblur="checkspek2()" onfocus= "clearspek2()">
                                 <div class="text-danger font-weight-bold" id="spekerrormessage"></div>
                             </div>
                             
                           <div class="form-group">
                                 <label for="spek3" class="text-uppercase font-weight-bold text-primary">Speaker3</label>
                                 <input type="text" class="form-control" id="spek3" name="spek3" placeholder="Enter Speaker Name" required="required" onblur="checkspek3()" onfocus= "clearspek3()">
                                 <div class="text-danger font-weight-bold" id="spekerrormessage"></div>
                             </div>
                             
                             <div class="form-group">
                                  <label for="outcome" class="text-uppercase font-weight-bold text-primary">Expected Outcome</label> &nbsp;&nbsp;&nbsp;<br/>
                                  <textarea placeholder="Write your Address Here" rows="6" cols="48" name="outcome"></textarea>
                            </div>
                            <div class="form-group">
                                  <label for="outcome" class="text-uppercase font-weight-bold text-primary">Actual Outcome</label> &nbsp;&nbsp;&nbsp;<br/>
                                  <textarea placeholder="Write your Address Here" rows="6" cols="48" name="day1"></textarea>
                            </div>
                                        
                             <button type="submit" class="btn btn-primary btn-block">send</button>
                         </form>
                       </div> <!-- Form tag div -->
                  </div> <!-- Card Body End -->
              </div> <!-- Card End -->
           </div> <!-- Col alignment end -->
         </div> <!-- Row End -->      
 </div>
	</form>
 </body>
</html>