<%@page pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" >
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="./resources/css/navbar.css">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="./index.jsp">Home</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="products.jsp">상품 목록</a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
						상품 관리
					</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="addProduct.jsp">상품 등록</a></li>
						<li><a class="dropdown-item" href="editProduct.jsp?edit=update">상품 수정</a></li>
						<li><a class="dropdown-item" href="editProduct.jsp?edit=delete">상품 삭제</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="fileupload.jsp">파일 업로드(테스트)</a></li>
						<li><a class="dropdown-item" href="BoardListAction.do?pageNum=1">게시판</a></li>
					</ul>
				</li>
			</ul>
			<div class="text-end">
				<c:choose>
					<c:when test="${empty sessionId}">
						<button type="button" class="btn btn-outline-light me-2" onclick="location.href='member/loginMember.jsp'">Login</button>
						<button type="button" class="btn btn-warning" onclick="location.href='register_form.jsp'">Sign-up</button>
					</c:when>
					<c:otherwise>
						<li style="padding-top: 7px;color: white">[<%=sessionId%>님]</li>
						<button type="button" class="btn btn-outline-light me-2" onclick="location.href='member/logoutMember.jsp'">Logout</button>
						<button type="button" class="btn btn-warning" onclick="location.href='member/updateMember.jsp'">My Profile</button>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
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
		