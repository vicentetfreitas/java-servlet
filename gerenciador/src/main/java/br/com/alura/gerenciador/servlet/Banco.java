package br.com.alura.gerenciador.servlet;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {
	private static List<Empresa> empresas = new ArrayList<>();
	private static Integer chaveSequencial = 1;

	static {
		Empresa empresa = new Empresa();
		empresa.setId(chaveSequencial++);
		empresa.setNome("Alura");

		Empresa empresa2 = new Empresa();
		empresa2.setNome("Caelum");
		empresa2.setId(chaveSequencial++);

		empresas.add(empresa);
		empresas.add(empresa2);
	}

	public void adiciona(Empresa empresa) {
		empresa.setId(Banco.chaveSequencial++);
		Banco.empresas.add(empresa);
	}

	public List<Empresa> getEmpresas() {
		return Banco.empresas;
	}

	public void removeEmpresa(Integer id) {

		Iterator<Empresa> it = empresas.iterator();

		while (it.hasNext()) {
			Empresa emp = it.next();

			if (emp.getId() == id) {
				it.remove();
			}
		}
	}

	public Empresa buscaEmpresaPorId(Integer id) {

		for(Empresa empresa : empresas) {
			if(empresa.getId() == id) {
				return empresa;
			}
		}
		
		return null;
		
	}
}
