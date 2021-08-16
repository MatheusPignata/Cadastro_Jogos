<%@page import="ctr.JogosProcess"%>
<%@page import="vo.Jogos" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Lista de Jogos</title>
		<link rel="stylesheet" href="home1.css">
	</head>
	<body>
		<div class="meio">
			<div class="nav">
				<a href="cadastro.jsp"><b>Cadastrar novo item</b></a> 
				<a href="editar.jsp"><b>Editar item</b></a>
				<input type="text" onkeyup="buscar()" id="busca" placeholder="Buscar">
			</div>
			<table class="tabela">
				<tr>
					<th>Jogo</th>
					<th>Plataforma</th>
					<th>Valor</th>
				</tr>
				<%
					JogosProcess.abrir();
					out.print("<tbody class='tablebody'>");
					for (Jogos c : JogosProcess.jogos) {
						out.print(c.toHTML());
					}
					out.print("</table>");
				%>
			</table>
		</div>
	</body>
	<script src="scripts.js"></script>
</html>