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

h6{
background-color: pink;
width: 30%;
height: 50%;
text-align: center;
}

th{
color: blue;
font-weight: bold;
font-size: large;
}
td{
font-size: large;
color: green;
font-weight: 600;
}

th, td {
  border-style: dotted;
  border-color: blue;
}

table{
margin-left: 200px;
}

.imp{
color: green;
}

p{
background-color: aqua;
width: 50%;
text-align: center;
height: 10%;
padding-right: 5%
}

</style>
<body class="purple">
	
	<div class="container mt-7 w-75">
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
				<div class="container text-center">

   

      <div class="container">

        
   <h5 class="text-success text-center">${msg}<span>, ${Customer.name}</span> </h5>
      <h5 class="text-success text-center">Your account balance is <span>, ${bal}</span> </h5>
   
   
<!--    	m.addAttribute("CustDetails", CustDetails1); -->
<!-- 				m.addAttribute("Customer", cust); -->
<!-- 				System.out.println("customer " + cust);// customer -->
<!-- 				m.addAttribute("msg", "Welcome to the bank"); -->
<!-- 				m.addAttribute("customerId1", custid); -->
<!-- 				m.addAttribute("customerAcNo", accno); -->
<!-- 				m.addAttribute("password1", pd); -->
<br><br>
   
     <table border="1 dotted" cellspacing="0" width=60%" text-align="center">
      
     
      <tr>
      	<th>Name: </th>
      	<td>${Customer.name}</td>
      </tr>
      <tr>
      	<th>Address: </th>
      	<td>${Customer.address}</td>
      </tr>
      <tr>
      	<th>Mobile Number: </th>
      	<td>${Customer.phoneNo}</td>
      </tr>
      <tr>
      	<th>Email: </th>
      	<td>${Customer.email}</td>
      </tr>

      <tr>
      	<th>Date of Birth: </th>
      	<td>${Customer.dateOfBirth}</td>
      </tr>
      <tr>
      	<th>Pancard number: </th>
      	<td>${Customer.panNo}</td>
      </tr>
      <tr>
      	<th>Adhar Card Number: </th>
      	<td>${Customer.adharNo}</td>
      </tr>
      <tr class = "imp">
      	<th>Account Number: </th>
      	<td>${Customer.accountNumber}</td>
      </tr>
      <tr class = "imp">
      	<th>Customer Id: </th>
      	<td>${Customer.customerId}</td>
      </tr>
<!--       <tr class = "imp"> -->
<!--       	<th>Account Balance: </th> -->
<%--       	<td>${bal}</td> --%>
<!--       </tr> -->
      
      </table>
					<br><br>

       <div class = "container">
            		<a href="login/" class="btn btn-primary">Back</a>
               		<a href="makepayment/${Customer.accountNumber}" class="btn btn-success">Make Payment</a>
               		<a href="deposit/${Customer.accountNumber}" class="btn btn-success">Deposit</a>
           </div> 		
        </div>
        
                
             

    

    </div>


  </div>
				

</body>
</html>