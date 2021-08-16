package vo.dao;
	
	import java.io.BufferedReader;
	import java.io.BufferedWriter;
	import java.io.FileReader;
	import java.io.FileWriter;
	import java.io.IOException;
	import java.util.ArrayList;
	
	import vo.Jogos;
	
	public class JogosDAO {
		private Jogos jogo;
		private ArrayList<Jogos> jogos;
		private BufferedReader br;
		private BufferedWriter bw;
		private String arquivo = "D:\\dbs\\cliente.csv";
	
		public ArrayList<Jogos> abrir() {
			jogos = new ArrayList<>();
			try {
				br = new BufferedReader(new FileReader(arquivo));
				String linha = "";
				while ((linha = br.readLine()) != null) {
					String[] campos = linha.split(";");
					jogo = new Jogos(campos[0], campos[1], campos[2]);
					jogos.add(jogo);
				}
				br.close();
			} catch (IOException e) {
				System.out.println("Erro ao abrir arquivo: " + e);
			}
			return jogos;
		}
	
		public boolean salvar(ArrayList<Jogos> vs) {
			try {
				bw = new BufferedWriter(new FileWriter(arquivo, false));
				for (Jogos p : vs) {
					bw.write(p.toCSV());
				}
				bw.close();
				return true;
			} catch (IOException e) {
				System.out.println("Erro ao gravar arquivo: " + e);
				return false;
			}
		}
	}