<%@page import="vo.Jogos"%>
<%@page import="ctr.JogosProcess"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Editar ou remover</title>
		<link rel="stylesheet" href="editar.css">
	</head>
	<body>
	
		<%
			Jogos jogoProcurado = new Jogos();
			jogoProcurado.setJogo(request.getParameter("jogo"));
			int indice = JogosProcess.jogos.indexOf(jogoProcurado);
			
			String notFound = "<p>Jogo não encontrado</p>";
			
			String opcao = request.getParameter("opcao");
			
			String formulario1 = "<form method='GET'>"
					+ "<input type='text' name='jogo' onkeyup='buscarBacana()' id='busca' placeholder='Digite o nome do jogo'>"
					+ "<input type='reset' value='Limpar' class='btn'><input type='submit' value='Buscar' class='btn'>" 
					+ "</form>";
					
			int cont = 0;
			
			if(jogoProcurado.getJogo() == null || jogoProcurado.getJogo().equals("")){
				out.print(formulario1);
				out.print("<p>Procure um jogo clicando em buscar!</p>");
			}else{
				for(Jogos c: JogosProcess.jogos){
					if(c.getJogo().equals(request.getParameter("jogo"))){
						String formulario2 = "<form method='GET'>"
								+ "<label>Jogo:</label><input type='text' name='jogo' id='mostrar' value='"	+ c.getJogo() + "'>"
								+ "<label>Plataforma:</label><input type='text' name='plataforma' id='mostrar' value='" + c.getPlataforma() + "'>"
								+ "<label>Valor:</label><input type='text' name='valor' id='mostrar' value='" + c.getValor() + "'>"
								+ "<div><label>Excluir</label><input type='radio' name='opcao' id='bolinha' value='excluir'></div>"
								+ "<div><label>Alterar</label><input type='radio' name='opcao' id='bolinha' value='alterar'></div>"
								+ "<input type='submit' value='Enviar' class='btn'>"
								+ "</form>";
						out.print(formulario2);	
						cont++;
					}
				}
				
				if (cont == 0){
					out.print(formulario1);
					out.print(notFound);
				}
				
				if(opcao != null){
					switch(opcao){
						case "excluir":
							JogosProcess.jogos.remove(indice);
							JogosProcess.salvar();
							break;
						case "alterar":
							jogoProcurado.setPlataforma(request.getParameter("plataforma"));
							jogoProcurado.setValor(request.getParameter("valor"));
							JogosProcess.jogos.set(indice, jogoProcurado);
							JogosProcess.salvar();
							break;
						default:
							break;
					}
					response.sendRedirect("index.jsp");
				}
				
			}
		%>
		<%
                JogosProcess.abrir();
                out.print("<table>");
                for (Jogos c : JogosProcess.jogos) {
                    out.print(c.toHTML());
                }
                out.print("</table>");
            %>
		<a href="index.jsp"><input type="button" value="Voltar" class="btn" id="btn_voltar"></a>
	</body>
	<script src="scripts.js"></script>
</html>