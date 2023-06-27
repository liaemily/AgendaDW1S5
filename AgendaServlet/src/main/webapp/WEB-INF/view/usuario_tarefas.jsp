<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
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
	
<title>Tarefas</title>

</head>

<header class="d-flex flex-wrap justify-content-center border-bottom"
		style="background-color: #855CBF">
		<nav class="navbar navbar-expand-lg navbar">
			<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item">
					<a class="nav-link fw-bold text-uppercase"
						style="color: #FFFFFF" href="/AgendaServlet/TaskServlet">Nova tarefa</a></li>
					<li class="nav-item"><a class="nav-link fw-bold text-uppercase"
						style="color: #FFFFFF" href="/AgendaServlet/LogoutServlet">Sair</a>
					</li>
				</ul>
			</div>
		</nav>
</header>

<body style="background-color: #49535C">
	<div>
		<div class="container py-3 h-100">
			<div class="row g-3 align-items-center h-100">
				<div class="col-12">
	        		<div class="card bg-dark text-white">
	          			<div class="card-body text-center">
								<form class="form-inline" action="<%=request.getContextPath()%>/UserTask" method="post">
								<div class="form-group">
					
									<label for="titulo" class="col-form-label d-inline-block">Título</label> 
									<input class="form-control w-25 d-inline-block" type="text" name="titulo" /> 
									
									<label for="data_criacao" class="col-form-label">Data de início</label> 
									<input class="form-control w-25 d-inline-block" type="date" name="data_criacao" />
									 
									<label for="data_conclusao" class="col-form-label">Data de conclusão</label> 
									<input class="form-control w-25 d-inline-block" type="date" name="data_conclusao"/> 
									<br>
									<input class="btn btn-primary mt-4" style="background: #855CBF; border-color: #855CBF" name="buscar" type="submit" value="Buscar" />
								</div>
								</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<form action="<%=request.getContextPath()%>/UserTask" method="post">
			<%@ page import="java.util.ArrayList"%>
			<%@ page import="model.Tarefa"%>

			<div class="bg-image h-100">
				<div class="mask d-flex align-items-center h-100">
					<div class="container">
						<div class="row justify-content-center">
							<div>
								<div class="card shadow-2-strong">
									<div class="card-body p-0">
										<div class="table-responsive table-scroll"
											data-mdb-perfect-scrollbar="true" style="position: relative">
											<table class="table table-dark mb-0 text-center">
												<thead style="background-color: #212529;">

													<tr class="text-uppercase text-succes">
														<th scope="col">Título</th>
														<th scope="col">Descrição</th>
														<th scope="col">Data de Início</th>
														<th scope="col">Data de Conclusão</th>
														<th scope="col">Status</th>
														<th scope="col">Editar Tarefa</th>
														<th scope="col">Excluir Tarefa</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${requestScope.lista_tarefas}" var="c">
														<tr  class="align-middle">
															<td>${c.titulo}</td>
															<td>${c.descricao}</td>
															<td>${c.data_criacao}</td>
															<td>${c.data_conclusao}</td>
															<td><c:choose>
																	<c:when test="${c.status=='nao_iniciada'}">Não iniciada</c:when>
																	<c:when test="${c.status=='em_andamento'}">Em andamento</c:when>
																	<c:when test="${c.status=='concluida'}">Concluída</c:when>
																</c:choose></td>
															<td class="align-middle"><a style="color: #855CBF" class="nav-link"
																href="/AgendaServlet/TaskEditServlet?id_tarefa=${c.id}">Editar</a>
															</td>
															<td class="align-middle"><a style="color: #855CBF" class="nav-link"
																href="/AgendaServlet/TaskDeleteServlet?id_excluir=${c.id}">Excluir</a>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


		</form>
	</div>
</body>
</html>