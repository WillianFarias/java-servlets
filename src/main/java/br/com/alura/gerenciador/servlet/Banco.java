package br.com.alura.gerenciador.servlet;

import java.util.ArrayList;
import java.util.List;

public class Banco {
	
	private static List<Empresa> empresas = new ArrayList<>();
	
	static {
		Empresa empresa = new Empresa();
		empresa.setNome("Caeulum");

		Empresa empresa2 = new Empresa();
		empresa2.setNome("Alura");
		
		empresas.add(empresa);
		empresas.add(empresa2);
	}

	public void adiciona(Empresa empresa) {
		System.out.println("Cadastrando nova empresa");
		Banco.empresas.add(empresa);
	}
	
	public List<Empresa> getEmpresas() {
		return Banco.empresas;
	}

}
