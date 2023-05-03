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
<%-- 		<input type="hidden" value = "${Customer.accountNumber}"> --%>
	
			<li class="nav-item"><a class="nav-link" href="<c:url value="/" />">Home</a></li>
			<li class="nav-item"><a class="nav-link" href="#">About</a></li>
			<li class="nav-item"><a class="nav-link" href="login">Login</a></li>

<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Create Account
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="createAccount">Saving Account</a>
          <a class="dropdown-item" href="#">Current Account</a>
         <div class="dropdown-divider"></div>
        </div>
</li>       						
      
						
					</ul>
				</nav>

</body>
</html>