/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

/**
 *
 * @author APLPoloNaval
 */
public class Aluno {
    int matricula;
    String nome;
    


    public Aluno() {
    }

    public Aluno(int matricula, String nome, Atendimento atendimento) {
        this.matricula = matricula;
        this.nome = nome;
    
    }

    public int getMatricula() {
        return matricula;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    
}
