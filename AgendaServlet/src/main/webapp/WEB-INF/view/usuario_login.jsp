<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<style><%@include file="/WEB-INF/view/styles.css"%></style>
<title>Login</title>
</head>

<body style="background-color: #49535C">
			<div class="container py-3 h-100">
				<div class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-12 col-md-8 col-lg-6 col-xl-5">
						<div class="card bg-dark text-white">
							<div class="card-body p-5 text-center">
								<div class="mb-md-2 mt-md-4 pb-1">
										<h2 class="fw-bold mb-2 text-uppercase">Login</h2>
										<br>
										<form action="<%=request.getContextPath()%>/login" method="post">
											
												<input class="form-control mb-4" type="text" name="login" required="required" placeholder="Usuário"  />
											
						
												<input class="form-control mb-4" type="password" name="password" required="required" placeholder="Senha" />
										
												<br>  
												
												<input
													class="btn btn-lg btn-block btn-primary"
													style="background: #855CBF; border-color: #855CBF"
													type="submit" value="Enviar" />
										</form>
										<br>
										Não possui cadastro? <a class="nav-link" style="color: #855CBF" href="/AgendaServlet/UserServlet"> Clique aqui para criar sua conta </a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</body>

</body>
</html>