<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored ="false"%>
</head>
<style>
.purple {
	background-color: #f5dcdc;
}
img, h2{
display: inline;}

.div1, .div2 {

	display: inline-block;
	border-radius: 25px;
	height: 450px;
	
}

.div1 {
	
	width: 35%;
	background-color: #f7f2e1;
	
	
}

.div2 {
	
	width: 60%;
	
}


h4, p {
	text-align: center;
	padding: 1px;
	color: purple;
	font-size: larger; 
}

h5 {
	text-align: center;
	background-color: aqua;
}

.bankimage{
width: 99%;
height: 65%;
padding: 10px;
border-radius: 25px
}

.flagimage{
width: 80%;
height: 40%;
padding: 10px;
border-radius: 25px;
margin-left: 35px;


}

.x{
margin-left: 380px;
}

.logout{
margin-left: 150px;
width: 60px;
}

.logout a{
display: inline;
}

</style>
<body>
	
	<div class="container mt-5 w-75">
		<div class="row">
			<div class="container">
				<img alt=""
					src="https://companieslogo.com/img/orig/OTP.BD-4b37445c.png?t=1654141166"
					width="50px" height="50px"> 
				<h2 style="color: green;">ITP Bank</h2><br>
				<br>
			
				<%@ include file="./navbarAdmin.jsp"%>
				<br>
				<div class="container mt-3">

    <div class="row">

      <div >

 <form action ="<c:url value="/BankAccountSystem/customer_search" />">
    <input type="text"  name="freetext" />
    
  <input type="submit" class="btn btn-primary" value="Search Account" placeholder="Enter Account Number"> 
  
  </form> <br>
   
      <h5 class="text-success text-center">Your account balance is <span>${CustDetails.balance}</span> </h5>
          <input type="hidden" value="${Customer.accountNumber}" name="accountNumber" />
      
      <div class="div1">
      					<br><br>
      					<img class = "flagimage" src="https://www.icicibank.com/content/dam/icicibank/icici-assets/india.svg">
						<h3 class="text-primary text-center">Admin Portal</h3>
						<p>Aiming to provide best in class technology, the admin portal will allow the corporate's designated admin an easy monitoring of corporate level spends and the cardholders activities.</p>
						


	</div>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<div class="div2">
						<h4 class="text-primary text-center">Customer Care No: 1800 1080</h4>
						<img class = "bankimage" src="https://www.icicibank.com/content/dam/icicibank/india/managed-assets/images/Admin-Portal-Banner.jpg">
					        <br>   <br>
					        <div class="logout">
		
		   		<a href="login/" class="btn btn-primary">Back</a>&nbsp;&nbsp;<a href="makepayment/${Customer.accountNumber}" class="btn btn-success">Make Payment</a>&nbsp;&nbsp;<a href="deposit/${Customer.accountNumber}" class="btn btn-success">Deposit</a>&nbsp;&nbsp;<a href="<c:url value="/" />" class="btn btn-danger">Logout</a>
               		
               		
	</div>
			       
	 		

	</div><hr>
       <div class = "x">
       
       </div>
        </div>

						
				</div>
   

    </div>


  </div>
				

</body>
</html>