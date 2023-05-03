<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ page isELIgnored ="false"%>
<title>Insert title here</title>
</head>
<style>
.purple {
	background-color: white;
}

img, h2 {
	display: inline;
}

.div1, .div2 {
	display: inline-block;
	border-radius: 25px;
	width: 45%;
	height: 422px;
}

.div1 {
	background-color: white;
}

.div2 {
	background-color: white;
}

h4, p {
	text-align: center;
	padding: 20px;
}

h5 {
	text-align: center;
}

}
a {
	color: green;
	text-decoration-line: none;
	background: rgba(255, 166, 0, 0.637);
	border-radius: 10px;
	height: 50%;
	font-size: 800;
	margin-left: 10px;
}

.bankimage {
	width: 90%;
	height: 85%;
	padding: 10px;
	border-radius: 25px
}
</style>
<body class="purple">
	<h4 class="text-success text-center">${msg }</h4>
	<div class="container mt-5 w-75">
		<div class="row">
			<div class="container">
				<img alt=""
					src="https://companieslogo.com/img/orig/OTP.BD-4b37445c.png?t=1654141166"
					width="50px" height="50px"> &nbsp;
				<h2 style="color: green;">ITP Bank</h2>
				<br> <br>
				<%@ include file="./navbar.jsp"%>
				<br>
				<h3 class="text-center mb-3">Make changes wherever needed and update..</h3>

<div class="container mt-3">
	<div class="row">
		<div class="col-md-6 offset-md-3">
<!-- 			<form action="savecustomerdata" method="POST" modelAttribute="customer"> -->
			<form action="${pageContext.request.contextPath }\savecustomerdataAfterUpdate"
          method="post" modelAttribute="customer">
          
                    <input type="hidden" value="${Customer.customerId}" name="customerId" />
                    <input type="hidden" value="${Customer.accountNumber}" name="accountNumber" />
                    <input type="hidden" value="${Customer.password}" name="password" />
                    
                  
                    
<!-- //                     String cu = request.getParameter("customerId"); -->
<!-- //                    long customerId = Long.parseLong(cu); -->
                   
<!-- //                    String an = request.getParameter("accountNumber"); -->
<!-- //                    long accountNumber = Long.parseLong(an); -->
                   
<!-- //                    String password = request.getParameter("password"); -->
                   
			
					

<!--typeOfAccount-->

				<label>Choose Type of Account: </label> 
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" value="Saving" name="typeOfAccount"><label>Saving </label>    
				&nbsp;&nbsp;&nbsp;
				<input type="radio" value="Current" name="typeOfAccount"><label>   Current</label>
				 &nbsp;&nbsp;&nbsp;
				<input type="radio" value="Recurring" name="typeOfAccount"><label>   Recurring</label>
				
				
					
<!--name-->
				<div class="form-group">
					<label for="name">Customer Name</label> 
					<input type="text"
					class="form-control" id="name" name="name"
					placeholder="Enter the Customer name here"
					value="${Customer.name}">
				</div>
				
<!--address-->				
				<div class="form-group">
					<label for="address">Customer Address</label>
					<textarea id="address" name="address" rows="4" cols="50"
					class="form-control"
					placeholder="Enter the Customer address here"
					value="${Customer.address}"></textarea>
				</div>
				
<!--phoneNo-->

				<div class="form-group">
					<label for="phoneNo">Customer Mobile No</label> 
					<input type="number"
					class="form-control" id="phoneNo" name="phoneNo"
					value="${Customer.phoneNo}"
					placeholder="Enter the  Customer Phone no here">
				</div>
				
<!--email-->
	
				<div class="form-group">

           			 <label for="email">Email</label>
            		 <input type="email"
             			 class="form-control" 
             			 id="email" 
             			 name="email" 
              			placeholder="Enter the Email here">
          		</div>
				
<!--nationality-->
				<label>Choose Nationality: </label>	
				&nbsp;&nbsp;&nbsp;
				<input type="radio" value="Indian" name="nationality"><label>Indian </label>
				  <input type="radio" value="Other" name="nationality"><label> Other</label>
				
<!--gender-->
				<br>
				<label>Choose Gender:  </label> 
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" value="Male" name="gender"><label> Male </label>    
				&nbsp;&nbsp;&nbsp;
				<input type="radio" value="Female" name="gender"><label> Female</label>
			
<!--dateOfBirth-->
				<br>
				<label for="birthday">Date of Birth:</label>
  				<input type="date"
					class="form-control" id="dateOfBirth" name="dateOfBirth"
					value="${Customer.dateOfBirth}">				
				

<!--panNo-->

				<div class="form-group">
					<label for="panNo" >Customer PAN Number</label> 
					<input type="text"
					class="form-control" id="panNo" name="panNo"
					placeholder="Enter the Customer Pan number"
					value="${Customer.panNo}" required>
				</div>

<!--adharNo-->

				<div class="form-group">
					<label for="adharNo">Customer AdharCard No</label> 
					<input type="number"
					class="form-control" id="adharNo" name="adharNo"
					value="${Customer.adharNo}"
					placeholder="Enter the Customer Adhar no here">
				</div>

				

<%-- ${pageContext.request.contextPath }/--%>
				
				<div class="container text-center">
<%--             		<a href="<c:url value="saveData" />" class="btn btn-outline-danger">Back</a> --%>
            		<button type="submit" class="btn btn-primary">Submit</button>
          		</div>

				<br>

			</form>
		</div>
	</div>
</div>
</body>
</html>