<%@page import="ctr.JogosProcess"%>
<%@page import="vo.Jogos" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Cadastre aqui</title>
		<link rel="stylesheet" href="cadastro.css">
	</head>
	<body>
		<form method="POST">
			<input type="text" name="jogos" required placeholder="Nome do jogo" class="input">
			<input type="text" name="plataforma" required placeholder="Plataforma do jogo" class="input">
			<input type="number" name="valor" required placeholder="Valor do jogo" class="input">
			<input type="submit" value="enviar" class="btn">
			<a href="index.jsp">
				<input type="button" value="Voltar" class="btn">
			</a>
		</form>
		<%
			Jogos jogoCadastrado = new Jogos(request.getParameter("jogos"), request.getParameter("plataforma"),"R$ "+ request.getParameter("valor"));
			if(jogoCadastrado.getJogo() == null || jogoCadastrado.getJogo().equals("")){
			}else{
				JogosProcess.jogos.add(jogoCadastrado);
				out.print(JogosProcess.salvar());
			}
		%>
		
	</body>
</html>