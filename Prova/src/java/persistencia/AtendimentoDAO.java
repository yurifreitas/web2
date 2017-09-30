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
import modelos.Atendimento;

/**
 *
 * @author APLPoloNaval
 */
public class AtendimentoDAO {
     public boolean alterarAtendimento(Atendimento atendimento) throws SQLException {        
        Connection connection = new persistencia.Conexao().getConnection();
        String sql = "UPDATE Atendimento SET data_hora_inicio=?, data_hora_fim=?, duvidas=? where id = ?;";
        PreparedStatement sqlP = connection.prepareStatement(sql);
         sqlP.setInt(1, atendimento.getDia() );
        sqlP.setString(2, atendimento.getHora_inicio());
        
        sqlP.setString(3, atendimento.getHora_fim());
        sqlP.setString(4, atendimento.getDuvidas());
        
        int resultado = sqlP.executeUpdate();
        sqlP.close();
        connection.close();
        return resultado == 1;

    }

    public Atendimento selecionarAtendimento(int id) throws SQLException {
        Atendimento atendimento = new Atendimento();
        Connection connection = new persistencia.Conexao().getConnection();
        String sql = "SELECT * FROM Atendimento WHERE id = ?;";
        PreparedStatement sqlP = connection.prepareStatement(sql);
        sqlP.setInt(1, id);
        ResultSet rs = sqlP.executeQuery();
        if (rs.next()) {
            
    
            atendimento.setId(rs.getInt("id"));
            atendimento.setDia(rs.getInt("dia"));
            atendimento.setHora_inicio(rs.getString("hora_inicio"));
            atendimento.setHora_fim(rs.getString("hora_fim"));
            atendimento.setDuvidas(rs.getString("duvidas"));
        }
        sqlP.close();
        connection.close();
        return atendimento;
    }

    public boolean excluirAtendimento(int id) throws SQLException {
        Connection connection = new persistencia.Conexao().getConnection();
        String sql = "DELETE FROM Atendimento WHERE id = ?;";
        PreparedStatement sqlP = connection.prepareStatement(sql);
        sqlP.setInt(1, id);
        int resultado = sqlP.executeUpdate();
        sqlP.close();
        connection.close();
        return resultado == 1;

    }

    public boolean adicionarAtendimento(Atendimento atendimento) throws SQLException {
        Connection connection = new persistencia.Conexao().getConnection();
        String sql = "INSERT INTO atendimento  dia, hora_inicio, hora_fim, aluno_mat,duvidas  VALUES ( ?, ?, ?, ?,?);";
        PreparedStatement sqlP = connection.prepareStatement(sql);
        sqlP.setInt(1, atendimento.getDia());
        sqlP.setString(2, atendimento.getHora_inicio());
        sqlP.setString(3, atendimento.getHora_fim());
        sqlP.setInt(4, atendimento.getAluno() );
        sqlP.setString(5, atendimento.getDuvidas());
        
        int resultado = sqlP.executeUpdate();
        sqlP.close();
        connection.close();
        return resultado == 1;

    }

    public ArrayList<Atendimento> selecionarAtendimentoT() throws SQLException {
        ArrayList<Atendimento> vetAtendimento=  new ArrayList();
        Connection connection = new persistencia.Conexao().getConnection();
        String sql = "SELECT * FROM atendimento ORDER BY id";
        PreparedStatement sqlP = connection.prepareStatement(sql);
        ResultSet rs = sqlP.executeQuery();
        while (rs.next()) {
            Atendimento atendimento = new Atendimento();
            atendimento.setId(rs.getInt("id"));
            atendimento.setDia(rs.getInt("dia"));
            atendimento.setHora_inicio(rs.getString("hora_inicio"));
            atendimento.setHora_fim(rs.getString("hora_fim"));
            atendimento.setAluno(rs.getInt("aluno_mat"));
            atendimento.setDuvidas(rs.getString("duvidas"));
            
           vetAtendimento.add(atendimento);
        }
        
        
        return vetAtendimento;

}
    
}
