package br.com.mvtech.gerenciador;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {

    private static List<Empresa> lista = new ArrayList<>();
    private static Integer chaveSeq = 1;

    static {
        Empresa empresa = new Empresa();
        empresa.setId(chaveSeq++);
        empresa.setNome("Alura");
        Empresa empresa2 = new Empresa();
        empresa2.setNome("Google");
        empresa2.setId(chaveSeq++);
        lista.add(empresa);
        lista.add(empresa2);
    }

    public void adiciona(Empresa empresa) {
        empresa.setId(Banco.chaveSeq++);
        Banco.lista.add(empresa);
    }

    public void removeEmpresa(Integer id){
        Iterator<Empresa> it = lista.iterator();

        while (it.hasNext()){
            Empresa emp = it.next();

            if(emp.getId() == id){
                it.remove();
            }
        }
    }

    public List<Empresa> getEmpresas(){
        return Banco.lista;
    }

    public Empresa buscaEmpresaPelaId(Integer id) {
        for (Empresa empresa : lista) {
            if (empresa.getId() == id) {
                return empresa;
            }
        }
        return null;
    }
}
