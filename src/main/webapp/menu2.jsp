<%@ page contentType="text/html; charset=utf-8"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="./index.jsp">Home</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
		<div class="navbar-nav">
			<a href="products.jsp" class="nav-item nav-link">상품목록</a>
			<div class="nav-item dropdown">
				<a href="#" data-toggle="dropdown" class="nav-item nav-link dropdown-toggle">Services</a>
				<div class="dropdown-menu">					
					<a href="addProduct.jsp" class="dropdown-item">상품 추가</a>
					<a href="#" class="dropdown-item">Web Development</a>
					<a href="#" class="dropdown-item">Graphic Design</a>
					<a href="#" class="dropdown-item">Digital Marketing</a>
                </div>
            </div>
		</div>

		<div class="navbar-nav ml-auto action-buttons">
			<div class="nav-item dropdown">
				<a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle mr-4">Sign In</a>
                <div class="dropdown-menu action-form">
					<form action="/examples/actions/confirmation.php" method="post">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Username" required="required">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="Password" required="required">
						</div>
						<input type="submit" class="btn btn-primary btn-block" value="Login">
						<div class="text-center mt-2">
							<a href="#">Forgot Your password?</a>
						</div>
					</form>
                </div>
			</div>
        </div>

		<a href="register_form.jsp" class="btn btn-primary btn-lg sign-up-btn" tabindex="-1" role="button" aria-disabled="true">Sign Up</a>
	</div>
</nav>

<!--
	<div class="collapse navbar-collapse" id="navbarNavDropdown">
		<ul class="navbar-nav">
		<li class="nav-item active">
			<a class="nav-link" href="#">상품목록 <span class="sr-only">(current)</span></a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="#">상품등록</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="#">Pricing</a>
		</li>
		</ul>
		<div class="navbar-nav ml-auto action-buttons">
			<div class="nav-item dropdown">
				<a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle mr-4">Login</a>
				<div class="dropdown-menu action-form">
					<form action="/examples/actions/confirmation.php" method="post">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Username" required="required">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="Password" required="required">
						</div>
						<input type="submit" class="btn btn-primary btn-block" value="Login">
						<div class="text-center mt-2">
							<a href="#">Forgot Your password?</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</nav>
		
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
		<form class="px-4 py-3">
			<div class="form-group">
				<label for="exampleDropdownFormEmail1">Email address</label>
				<input type="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="email@example.com">
			</div>
			<div class="form-group">
				<label for="exampleDropdownFormPassword1">Password</label>
				<input type="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password">
			</div>
			<div class="form-check">
				<input type="checkbox" class="form-check-input" id="dropdownCheck">
				<label class="form-check-label" for="dropdownCheck">
					Remember me
				</label>
			</div>
			<button type="submit" class="btn btn-primary">Sign in</button>
		</form>
		<div class="dropdown-divider"></div>
		<a class="dropdown-item" href="#">New around here? Sign up</a>
		<a class="dropdown-item" href="#">Forgot password?</a>
	</div>
</nav>-->
		