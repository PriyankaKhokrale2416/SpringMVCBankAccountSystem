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

h5, span {
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

p{
background-color: aqua;
width: 50%;
text-align: center;
height: 10%;
padding-right: 5%
}

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

        
   <h4 class="text-success text-center">${msg}</h4>
   
    
					

       
            		<span><a href="login/" class="btn btns-danger text-center">Back</a></span>
        </div>
        
                
             

      </div>

    </div>


  </div>
				

</body>
</html>