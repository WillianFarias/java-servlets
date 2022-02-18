package br.com.alura.gerenciador.servlet;

import java.util.ArrayList;
import java.util.List;

import javax.xml.crypto.Data;

import java.util.Date;

public class Banco {
	
	private static List<Empresa> empresas = new ArrayList<>();
	
	static {
		Empresa empresa = new Empresa();
		empresa.setNome("Caeulum");
//		empresa.setDataAbertura(dataAbertura);

		Empresa empresa2 = new Empresa();
		empresa2.setNome("Alura");
//		empresa2.setDataAbertura(new Data());
		
		empresas.add(empresa);
		empresas.add(empresa2);
	}

	public void adiciona(Empresa empresa) {
		System.out.println("Cadastrando nova empresa na lista!");
		Banco.empresas.add(empresa);
	}
	
	public List<Empresa> getEmpresas() {
		return Banco.empresas;
	}

}
