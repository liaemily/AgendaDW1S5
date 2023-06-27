<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style><%@include file="/WEB-INF/view/styles.css"%></style>

<title>:)</title>

</head>

<header class="d-flex flex-wrap justify-content-center border-bottom" style="background-color: #855CBF">
    <nav class="navbar navbar-expand-lg navbar">
    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link fw-bold text-uppercase"  style="color: #FFFFFF" href = "/AgendaServlet/UserTask">Tarefas</a>
            </li>
            <li class="nav-item">
                <a class="nav-link fw-bold text-uppercase"  style="color: #FFFFFF" href = "/AgendaServlet/TaskServlet">Adicionar tarefa</a>
            </li>
            <li class="nav-item">
                <a class="nav-link fw-bold text-uppercase"  style="color: #FFFFFF" href="/AgendaServlet/LogoutServlet">Sair</a>
            </li>
        </ul>
        </div>
    </nav>
</header>

<body style="background-color: #49535C">
		<div class="container py-3 h-100">
			<div class="row g-3 align-items-center h-100">
				<div class="col-12">
	        		<div class="card bg-dark text-white">
	          			<div class="card-body text-center">
	          			<h2>Tarefa excluída com sucesso!</h2>
	          			</div>
					</div>
				</div>
			</div>
	</div>
</body>

</html>