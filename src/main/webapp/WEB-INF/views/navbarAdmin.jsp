<%@ page language="java"   pageEncoding="ISO-8859-1"%>	
<!DOCTYPE html>
<html>
<head>
<%@ include file="./bootstrap.jsp"%>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<style>
nav{
font-weight: bolder;}
</style>
<body>

	<nav class="navbar navbar-expand-sm navbar-dark  " style="background-color: #1f7034">
		<ul class="navbar-nav">
		<input type="hidden" value = "${Customer.accountNumber}" name = "accountNumber">
		
	
			<li class="nav-item"><a class="nav-link" href="<c:url value="/" />">Home</a></li>
			<li class="nav-item"><a class="nav-link" href="#">About</a></li>
       		<li class="nav-item"><a class="nav-link" href="showAllAccounts" />Show all accounts</a></li>
			
       						
      
						
					</ul>
				</nav>

</body>
</html>