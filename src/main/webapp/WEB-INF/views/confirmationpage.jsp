<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ page import="java.util.List"%>
	<%@ page import="java.util.*"%>
	<%@ page import="com.models.Customer"%>
	<%@ page import="com.models.CustomerDetails"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored ="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.purple {
	background-color: white;
}

button{
	width: 100px;
}
body {
	background-color: blanchedalmond;
}

.divdetails{
border: 1px dotted blue;
width: 50%;

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
margin-left:230px;}



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
<div class="container mt-10">


    <div class="row">
        <h4 style="color: red; font-size: 25px; margin-left: 340px;">${msg1}</h4>
        <br>
     <br> 
      <div class = "container ">
      
<%--       	<span class = "span1">Type of Account: </span><span class = "span2">${Customer.typeOfAccount}</span><br> --%>
<%--        <span class = "span1">Name: </span><span class = "span2" >${Customer.name}</span><br> --%>
<%--        <span class = "span1">Address:</span><span class = "span2">${Customer.address}</span><br> --%>
<%--        <span class = "span1">Mobile number:</span><span class = "span2">${Customer.phoneNo}</span><br> --%>
<%--        <span class = "span1">Email:</span><span class = "span2">${Customer.email}</span><br> --%>
<%--        <span class = "span1">Nationality:</span><span class = "span2">${Customer.nationality}</span><br> --%>
<%--        <span class = "span1">Gender:</span><span class = "span2">${Customer.gender}</span><br> --%>
<%--        <span class = "span1">Date Of Birth:</span><span class = "span2">${Customer.dateOfBirth}</span><br> --%>
<%--        <span class = "span1">Pancard Number:</span><span class = "span2">${Customer.panNo}</span><br> --%>
<%--        <span class = "span1">Adhar Card Number:</span><span class = "span2">${Customer.adharNo}</span><br> --%>
      <table border="1 dotted" cellspacing="0" width=60%" text-align="center">
      
      <tr>
      	<th>Type of Account: </th>
      	<td>${Customer.typeOfAccount}</td>
      </tr>
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
      	<th>Nationality: </th>
      	<td>${Customer.nationality}</td>
      </tr>
      <tr>
      	<th>Gender: </th>
      	<td>${Customer.gender}</td>
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
      
      </table>
      
      
      
      </div>
      </div>
      
      <br>
 <div class = "container text-center">
<span><a href="updatedetails/${accno}" class="btn btn-primary">Update</a></span>
<span><a href="<c:url value="homeviewpage" />" class="btn btn-success">Confirm</a></span>
		            		
</div>
    </div>


  </div>
  </div>
   </div>
				

</body>
</html>