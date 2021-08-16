package vo;

import java.util.Objects;

public class Jogos {
	//Atributos
		private String jogo; 
		private String plataforma; 
		private String valor;
		
		//Metodos construtores;
		public Jogos () {}
		
		public Jogos(String jogo, String plataforma, String valor) {
			this.jogo = jogo;
			this.plataforma = plataforma;
			this.valor = valor;
		}

		//Metodos getters and setters;
		public String getJogo() {
			return jogo;
		}

		public void setJogo(String jogo) {
			this.jogo = jogo;
		}

		public String getPlataforma() {
			return plataforma;
		}

		public void setPlataforma(String plataforma) {
			this.plataforma = plataforma;
		}

		public String getValor() {
			return valor;
		}

		public void setValor(String valor) {
			this.valor = valor;
		}
		
		//Equals and hashCode
		@Override
		public int hashCode() {
			return Objects.hash(jogo);
		}

		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			Jogos other = (Jogos) obj;
			return Objects.equals(jogo, other.jogo);
		}
		
		//ToString's
		@Override
		public String toString() {
			return jogo + "\t" + plataforma + "\t" + valor + "\n";
		}
		
		public String toCSV() {
			return jogo + ";" + plataforma + ";" + valor + "\n";
		}
		
		public String toHTML() {
			return "<tr><td>" + jogo + "</td><td>" + plataforma + "</td><td>" + valor + "</td></tr>";
		}
}
