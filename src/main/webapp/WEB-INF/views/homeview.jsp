<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<style>
.purple {
	background-color:   #fff3e6;
}

img, h2 {
	display: inline;
}

.div1, .div2 {
	display: inline-block;
	border-radius: 25px;
	width: 45%;
	height: 340px;
	
}

.div1{
	background-color:   white;
}
.div2{
	background-color:    white;
}

h4, p {
	text-align: center;
	padding: 10px;
	color: green;
	font-size: large;
	font-weight: 620;
}

h5 {
	text-align: center;
	color: green;
}
a{
	color: white;
	text-decoration-line: none;
	background: rgba(255, 166, 0, 0.637);
	border-radius: 10px;
	height: 8%;
	font-size: 800;
	margin-left: 20px;	
}
.bankimage{
width: 90%;
height: 85%;
padding: 15px;
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

    <div class="container">
<div class = "container text-center">
        <h4 style="color: red; font-size: 25px; ">${msg2}</h4><br>
</div>
      <div class = "div1">
          <h4 style="color:    #cc9900;">New internetbank and mobilebank</h4>
         
          <p>Discover the new ITP InternetBank and MobileBank services and manage your daily finances on our new digital channels!</p>
          <p>Register easily in the ITPdirect internetbank at the New internetbank registration menu!</p>
        	<hr>
        	<h5 style="color:  #cc9900;">Are you already using the new internetbank?</h5>
        	<div class = "container text-center"><br>
        
<a href="login/" class="btn btn-success">Login</a></div>
        	
        	
              
          </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
           <div class = "div2">&nbsp;&nbsp;&nbsp;&nbsp;
      
          <img class = "bankimage" alt=""
					src="https://img.etimg.com/thumb/width-1200,height-900,imgsize-125244,resizemode-1,msid-77066632/industry/banking/finance/banking/privatisation-drive-india-plans-to-reduce-number-of-state-owned-banks-to-just-five-say-sources.jpg"
					width="50px" height="50px"> <br><br><br>
        <div class="container text-center">
<a  href="<c:url value="createAccount" />" class="btn btn-success">Create Account</a></div>
              
          </div>


    </div>
  </div>
  </div>
  </div>
  </div></body></html>

