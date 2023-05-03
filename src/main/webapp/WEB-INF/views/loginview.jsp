<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
.div2{
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
a{
	color: green;
	text-decoration-line: none;
	background: rgba(255, 166, 0, 0.637);
	border-radius: 10px;
	height: 50%;
	font-size: 800;
	margin-left: 10px;
}
.bankimage{
width: 90%;
height: 85%;
padding: 10px;
border-radius: 25px
}
</style>
<body class="purple">
	<div class="container mt-5 w-75">
		<div class="row">
			<div class="container">
				<img alt=""
					src="https://companieslogo.com/img/orig/OTP.BD-4b37445c.png?t=1654141166"
					width="50px" height="50px"> &nbsp;
				<h2 style="color: green;">ITP Bank</h2>
				<br>
				<br>
				<%@ include file="./navbar.jsp"%>
				<br>
				<div class="container mt-3">

    <div class="row">

      <div class="col-md-6 offset-md-3">

        <h1 class="text-center mb-3">Login to Internet Banking</h1>

        <form action="<c:url value="/getdetailsafterlogin" />"  method= "post" >
          
          
          <div class="form-group">
            <label for="accountNumber">Account Number</label> <input type="number"
              class="form-control" id="accountNumber" 
              name="accountNumber" placeholder="Enter the Account Number"
              value="accountNumber">
          </div>
          
          
           <div class="form-group">
            <label for="customerId">Customer Id</label> <input type="number"
              class="form-control" id="customerId" 
              name="customerId" placeholder="Enter the Customer Id"
              value="customerId1">
          </div>
          
         
          
          <div class="form-group">
            <label for="password">Password</label> <input type="password"
              class="form-control" id="Password" 
              name="password" placeholder="Enter the password as combnation of name and CustomerId"
              value="password">
          </div>

		 

          <div class="container text-center">
            <a href="<c:url value="/" />" 
              class="btn btn-outline-danger">Back</a>
              
            <button type="submit" class="btn btn-primary">Login</button>
          </div>
        </form>

      </div>

    </div>
  </div>
  </div>
  </div>
  </div></body></html>

