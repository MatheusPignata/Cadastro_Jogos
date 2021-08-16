package ctr;

import java.util.ArrayList;

import vo.Jogos;
import vo.dao.JogosDAO;

public class JogosProcess {
	
	public static ArrayList<Jogos> jogos = new ArrayList<>();
	
	public static JogosDAO cd = new JogosDAO();
	
	public static void testes() {
		jogos.add(new Jogos("1111111", "11111", "okdsako"));
		jogos.add(new Jogos("2222222", "22222", "okdsako"));
		jogos.add(new Jogos("3333333", "33333", "okdsako"));
		jogos.add(new Jogos("4444444", "44444", "okdsako"));
		jogos.add(new Jogos("5555555", "55555", "okdsako"));
		jogos.add(new Jogos("6666666", "66666", "okdsako"));
	}
	
	public static void abrir() {
		jogos = cd.abrir();
	}
	
	public static String salvar() {
		if(cd.salvar(jogos)) {
			return "<p>Salvo com sucesso!</p>";
		} else {
			return "<p>Falha ao salvar!</p>";
		}
	}
}