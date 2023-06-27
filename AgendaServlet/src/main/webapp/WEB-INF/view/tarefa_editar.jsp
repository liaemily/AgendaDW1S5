<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style><%@include file="/WEB-INF/view/styles.css"%></style>

<title>Editar Tarefa</title>

</head>
<body>

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
	 <div class="container-fluid">
		<div class="container py-3 h-100">
			<div class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-12 col-md-8 col-lg-6 col-xl-5">
	        		<div class="card bg-dark text-white">
	          			<div class="card-body p-5 text-center">
	            			<div class="mb-md-5 mt-md-4 pb-1">
									<h2 class="fw-bold mb-2 text-uppercase">Editar tarefa</h2>
									<br>
									<form action="<%=request.getContextPath()%>/TaskEditServlet" method="post">
										
											<label for="titulo" class="col-form-label">Título</label>
											<input class="form-control" type="text" name="titulo" required="required" value=<%= request.getAttribute("titulo") %> />
										
										
											<label for="descricao" class="col-form-label">Descrição</label>
											<input class="form-control" type="text" name="descricao" value=<%= request.getAttribute("descricao") %> />
										
										
											<label for="data_criacao" class="col-form-label">Data de início</label>
											<input class="form-control" type="date" name="data_criacao" required="required" value=<%= request.getAttribute("data_criacao") %> />
										
										
											<label for="data_conclusao" class="col-form-label">Data de conclusão</label>
											<input class="form-control" type="date" name="data_conclusao" required="required" value=<%= request.getAttribute("data_conclusao") %> />
										
											<% String status = (String) request.getAttribute("status_t"); %>
									
											<label for="status" class="col-form-label">Status</label>
											<select class="form-control" name = "status" required="required">
												<% if(status.equals("nao_iniciada")){ %>
													<option value="nao_iniciada" selected>Não iniciada</option>
												<% } else { %>
													<option value="nao_iniciada">Não iniciada</option>
												<% } %>
												
												<% if(status.equals("em_andamento")){ %>
													<option value="em_andamento" selected>Em andamento</option>
												<% } else { %>
													<option value="em_andamento">Em andamento</option>
												<% } %>
												
												<% if(status.equals("concluida")){ %>
													<option value="concluida" selected>Concluída</option>
												<% } else { %>
													<option value="concluida">Concluída</option>
												<% } %>
											</select>
									
											<br>
											<br>
											<br>
											<input class="btn btn-lg btn-block btn-primary" style="background: #855CBF; border-color: #855CBF" type="submit" value="Enviar" />
									</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>