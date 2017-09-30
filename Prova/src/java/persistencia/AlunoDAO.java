/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelos.Aluno;

/**
 *
 * @author APLPoloNaval
 */
public class AlunoDAO {
      public boolean alterarAluno(Aluno aluno) throws SQLException {        
        Connection connection = new persistencia.Conexao().getConnection();
        String sql = "UPDATE aluno SET nome = ? WHERE matricula = ?;";
        PreparedStatement sqlP = connection.prepareStatement(sql);
        sqlP.setString(1, aluno.getNome());
        sqlP.setInt(2, aluno.getMatricula());
        int resultado = sqlP.executeUpdate();
        sqlP.close();
        connection.close();
        return resultado == 1;

    }

    public Aluno selecionarAluno(int id) throws SQLException {
        Aluno aluno = new Aluno();
        Connection connection = new persistencia.Conexao().getConnection();
        String sql = "SELECT * FROM Aluno WHERE matricula = ?;";
        PreparedStatement sqlP = connection.prepareStatement(sql);
        sqlP.setInt(1, id);
        ResultSet rs = sqlP.executeQuery();
        if (rs.next()) {
          
            aluno.setMatricula(rs.getInt("matricula"));
            aluno.setNome(rs.getString("nome"));
        }
        sqlP.close();
        connection.close();
        return aluno;
    }

    public boolean excluirAluno(int id) throws SQLException {
        Connection connection = new persistencia.Conexao().getConnection();
        String sql = "DELETE FROM Aluno WHERE matricula= ?;";
        PreparedStatement sqlP = connection.prepareStatement(sql);
        sqlP.setInt(1, id);
        int resultado = sqlP.executeUpdate();
        sqlP.close();
        connection.close();
        return resultado == 1;

    }

    public boolean adicionarAluno(Aluno aluno) throws SQLException {
        Connection connection = new persistencia.Conexao().getConnection();
        String sql = "INSERT INTO aluno ( nome) VALUES (?)";
        PreparedStatement sqlP = connection.prepareStatement(sql);
       
        sqlP.setString(1, aluno.getNome());
        
        int resultado = sqlP.executeUpdate();
        sqlP.close();
        connection.close();
        return resultado == 1;

    }

    public ArrayList<Aluno> selecionarTodosA() throws SQLException {
        ArrayList<Aluno> vetaluno = new ArrayList();
        Connection connection = new persistencia.Conexao().getConnection();
        String sql = "SELECT * FROM aluno ORDER BY matricula";
        PreparedStatement sqlP = connection.prepareStatement(sql);
        ResultSet rs = sqlP.executeQuery();
        while (rs.next()) {
            Aluno aluno = new Aluno();
            aluno.setMatricula(rs.getInt("matricula"));
            aluno.setNome(rs.getString("nome"));
           
            vetaluno.add(aluno);
        }
        return vetaluno;

}
    
}
