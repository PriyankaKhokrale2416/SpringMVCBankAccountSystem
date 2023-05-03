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

h6, h5{
color: navy;
font-size: larger;}

p{
background-color: aqua;
width: 50%;
text-align: center;
height: 10%;
padding-right: 5%
}
label{
color: Blue;
font-size: large;
margin-left: 0px;
)
</style>
<body class="purple">
	
	<div class="container mt-5 w-75">
		<div class="row">
			<div class="container">
				<img alt=""
					src="https://companieslogo.com/img/orig/OTP.BD-4b37445c.png?t=1654141166"
					width="50px" height="50px"> &nbsp
				<h2 style="color: green;">ITP Bank</h2>
				<br>
				<br>
				<%@ include file="./navbar.jsp"%>
				<br>
				<div class="container mt-3">

    <div class="row">

      <div class="col-md-6 offset-md-3">

        
   <h5 class="text-success text-center">Proceed to do Transactions</span> </h5>
					

        </div>
        <div class="container text-center">
        
        <div class="container mt-2">
	<div class="row">
	<div class="col-md-6 offset-md-3">
<form action="updateBalanceAfterTransaction" method="POST" modelAttribute="CustomerD">		
<div class="form-group">

   <h6 class="text-danger text-center">Fill the Details to Add Payee</span> </h6>

 <br><br>
	
	<label for="payeename">Name: </label> <input type="text" class="form-control" id="payeename" name="payeename" value="${Customer.payeename}" 
		placeholder="Enter the  name of payee">
	<label for="payeebank">Bank name and address of Payee</label> <input type="text" class="form-control" id="payeebank" name="payeebank" value="${Customer.payeebank}" 
		placeholder="Enter the  bank name of payee">
	<label for="payeeifsc">IFSC code</label><input type="number" class="form-control" id="payeeifsc" name="payeeifsc" value="${Customer.payeeifsc}" 
		placeholder="Enter the  ifsc code"> 									
	<label for="payeebranch">Branch name</label> <input type="text" class="form-control" id="payeebranch" name="payeebranch" value="${Customer.payeebranch}" 
		placeholder="Enter the  branch name"> 
	<label for="wamount">Amount</label> <input type="number" class="form-control" id="wamount" name="wamount" value="wamount" 
		placeholder="Enter the  amount to transfer"> 
	          <input type="number" value="${accno}" name="caccountnumber" />

				
</div>
<br>
       	<button type="submit" class="btn btn-primary">Transfer</button>

</form>
	</div>
        
        </div>
        
                
             

      </div>

    </div>


  </div>
				

</body>
</html>