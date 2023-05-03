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

a{
	color: green;
	text-decoration-line: none;
	background: rgba(255, 166, 0, 0.637);
	border-radius: 10px;
	height: 100%;
	font-size: 800;
	margin-left: 10px;
}
body {
	background-color: blanchedalmond;
}

table {
	text-align: center;
	margin: 0 auto;
}

td, th {
	font-size: 15px;
	padding: 10px;
}

th {
	color: green;
	background-color: whitesmoke;
}

td {
	color: white;
	background-color: #edf3f7;
	font-weight: bold;
	color: purple;
}
h3{
display: inline;
margin-left: 200px;
padding: 70px;}
</style>
<body class="purple">
	<h4 class="text-success text-center">${msg }</h4>
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


        <h5 style="text-align: center; color: red; font-size: 30px; margin-left: 460px;">Account Details</h5><br>
        
 <table border="1" cellspacing="0" width=80%" text-align="center">
   
        <tr>
           <th>Name</th>
           <th>Account Number</th>
           <th>Customer Id</th>
           <th>Address</th>
           <th>Date Of Birth</th>
           <th>Phone number</th>
           <th>Adhar Number</th>
           <th>Pan Number</th>
           <th>Email Id</th>
           <th></th>
        </tr>
         
         
        <c:forEach items="${accounts}" var="a" >
                 <tr>
        
			<td class = "idcol">${a.name}</td>
			<td class = "idcol">${a.accountNumber}</td>
           <td class = "idcol">${a.customerId}</td>
           <td class = "idcol">${a.address}</td>
           <td class = "idcol">${a.dateOfBirth}</td>
           <td class = "idcol">${a.phoneNo}</td>
           <td class = "idcol">${a.adharNo}</td>
           <td class = "idcol">${a.panNo}</td>
           <td class = "idcol">${a.email}</td>
 
        	<td class = "idcol">
        		<a href="${pageContext.request.contextPath }/delete/${a.accountNumber}" onclick="if(!(confirm('Are you sure want to delete this Student permanently?'))) return false"><i class="fas fa-trash text-danger" style="font-size: 30px;"></i></a>
        		<a href="updatedetails/${a.accountNumber }"><i class="fas fa-pen-nib text-primary" style="font-size: 30px;"></i></a>
        	</td>
      
          <tr>
          
        </c:forEach>
 </table>


		            		
<div class="container text-center">
            <a href="<c:url value="/" />" 
              class="btn btn-danger">Logout</a>
              
 <button class="btn btn-primary" onclick="history.back()">Go back</button>
</div>
      </div>

    </div>


  </div>
				

</body>
</html>