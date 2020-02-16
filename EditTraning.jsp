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
                             <h2>EditTraining Pages</h2>
                             <h5 style="color: red;"> ${regsuccessmsg}</h5>
                         </div>
                   
                         <div class="mt-4">
                           <form action="training" method="post" name='registration' onSubmit="return checkgender();">
                             <div class="form-group">
                                 <label for="eventId" class="text-uppercase font-weight-bold text-primary">Training ID</label>
                                 <input type="tel" class="form-control" id="eventId" name="eventId" placeholder="Enter Training ID" required="required" onblur="checkId()" onfocus= "clearId()">                           
                             </div>
                             
                             <div class="form-group">
                                 <label for="traname" class="text-uppercase font-weight-bold text-primary">Training Name</label>
                                 <input type="text" class="form-control" id="traname" name="traname" placeholder="Enter Your Training Name" required="required" onblur="checkname()" onfocus= "clearname()">
                                 <div class="text-danger font-weight-bold" id="nameerrormessage"></div>
                             </div>
                             
                             <div class="form-group">
                                 <label for="discrp" class="text-uppercase font-weight-bold text-primary">Training description</label>
                                 <input type="text" class="form-control" id="discrp" name="discrp" placeholder="Enter Training Description " required="required" onblur="checkdiscrp()" onfocus= "cleardiscrp()">
                                 <div class="text-danger font-weight-bold" id="discrperrormessage"></div>
                             </div>
                             
                             <div class="form-group">
                                 <label for="date" class="text-uppercase font-weight-bold text-primary">Training Date</label>
                                 <input type="date" class="form-control" id="date" name="date" placeholder="Enter Date" required="required" onblur="checkdate()" onfocus= "cleardate()">                              
                             </div>
                            <div class="form-group">
                                 <label for="budget" class="text-uppercase font-weight-bold text-primary">Budget of Training</label>
                                 <input type="number" class="form-control" id="budget" name="budget" placeholder="Enter Budget of Training" required="required" onblur="checkbudget()" onfocus= "clearbudget()">
                                 <div class="text-danger font-weight-bold" id="budgeterrormessage"></div>
                             </div>
                             <div class="form-group">
                                 <label for="paid" class="text-uppercase font-weight-bold text-primary">Paid of Trainer</label>
                                 <input type="number" class="form-control" id="paid" name="paid" placeholder="Enter Paid of Trainer" required="required" onblur="checkpaid()" onfocus= "clearpaid()">
                                 <div class="text-danger font-weight-bold" id="paiderrormessage"></div>
                             </div>                                                      
                             
                             <div class="form-group">
                                  <label for="stdOutcome" class="text-uppercase font-weight-bold text-primary">Expected Outcome</label> &nbsp;&nbsp;&nbsp;<br/>
                                  <textarea placeholder="Write your Address Here" rows="6" cols="48" name="stdOutcome"></textarea>
                            </div>                 
                             <button type="submit" class="btn btn-primary btn-block">send</button>
                         </form>
                       </div> <!-- Form tag div -->
                  </div> <!-- Card Body End -->
              </div> <!-- Card End -->
           </div> <!-- Col alignment end -->
         </div> <!-- Row End -->      
 </div>
   <div class="row">
          <div class="col-md-6 col-sm-8 mx-auto">
               <div class="card">
                   <div class="card-body" style="background-color: #eeefff">
                        <div class="mt-2 text-center">
                         <form action="trainning">
       						<input type="text" name="traname" placeholder="ENTER EVENT NAME" required>
       						<input type="submit" value="SEARCH">
   							</form>
   							  <div class="" style="background-image: url('images/hero_1.jpg');">
        <div class="container">
          <div class="row">
            <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
             <br/>
   			<br/>
  			 ${msg}
              <table border="1">
       		<tr>
        	<th>EVENT ID</th>
			<th>TRAINNING NAME</th>
			<th>DESCRIPTION</th>
			<th>DATE</th>
			<th>TEACHERS</th>
			<th>BUDGET</th>
			<th>PAID</th>
			<th>STUDENT OUT COME</th>
      	</tr>
      
      <tr>
        <td>${stinfo.eventId}</td>
			<td>${stinfo.traname}</td>
			<td>${stinfo.discrp}</td>
			<td>${stinfo.date}</td>
			<td>${stinfo.teachers}</td>
			<td>${stinfo.budget}</td>
			<td>${stinfo.paid}</td>
			<td>${stinfo.stdOutcome}</td>
         <td><a href="/deleteEvent?eventId=${stinfo.eventId}">DELETE</a></td>
      </tr>
   
   </table>
            </div>
          </div>
        </div>
      </div>
                            </div> <!-- Form tag div -->
                  </div> <!-- Card Body End -->
              </div> <!-- Card End -->
           </div> <!-- Col alignment end -->
         </div> <!-- Row End -->      
</body>
</html>