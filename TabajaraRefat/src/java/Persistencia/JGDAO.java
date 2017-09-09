
package Persistencia;

import Modelos.Jogador;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class JGDAO {
       public boolean alterarJogador(Jogador jogador) throws SQLException {        
        Connection connection = new Conexao().getConnection();
        String sql = "UPDATE jogador SET nome = ?,  posicao = ?, time = ? WHERE id = ?;";
        PreparedStatement sqlP = connection.prepareStatement(sql);
        sqlP.setString(1, jogador.getNome());
        sqlP.setString(2, jogador.getPosicao());
        sqlP.setInt(3, jogador.getTime());
        sqlP.setInt(4, jogador.getId());
        int resultado = sqlP.executeUpdate();
        sqlP.close();
        connection.close();
        return resultado == 1;

    }

    public Jogador selecionarJogador(int id) throws SQLException {
        Jogador jogador = new Jogador();
        Connection connection = new Conexao().getConnection();
        String sql = "SELECT * FROM jogador WHERE id = ?;";
        PreparedStatement sqlP = connection.prepareStatement(sql);
        sqlP.setInt(1, id);
        ResultSet rs = sqlP.executeQuery();
        if (rs.next()) {
            jogador.setId(rs.getInt("id"));
            jogador.setNome(rs.getString("nome"));
            jogador.setPosicao(rs.getString("posicao"));
            jogador.setTime(rs.getInt("time"));
        }
        sqlP.close();
        connection.close();
        return jogador;
    }

    public boolean excluirJogador(int id) throws SQLException {
        Connection connection = new Conexao().getConnection();
        String sql = "DELETE FROM jogador WHERE id = ?;";
        PreparedStatement sqlP = connection.prepareStatement(sql);
        sqlP.setInt(1, id);
        int resultado = sqlP.executeUpdate();
        sqlP.close();
        connection.close();
        return resultado == 1;

    }

    public boolean adicionarJogador(Jogador jogador) throws SQLException {
        Connection connection = new Conexao().getConnection();
        String sql = "INSERT INTO jogador (nome, posicao, time) VALUES (?,?,?)";
        PreparedStatement sqlP = connection.prepareStatement(sql);
        sqlP.setString(1, jogador.getNome());
        sqlP.setString(2, jogador.getPosicao());
        sqlP.setInt(3, jogador.getTime());
        int resultado = sqlP.executeUpdate();
        sqlP.close();
        connection.close();
        return resultado == 1;

    }

    public ArrayList<Jogador> selecionarTodosJ() throws SQLException {
        ArrayList<Jogador> vetJogador = new ArrayList();
        Connection connection = new Conexao().getConnection();
        String sql = "SELECT * FROM jogador ORDER BY id";
        PreparedStatement sqlP = connection.prepareStatement(sql);
        ResultSet rs = sqlP.executeQuery();
        while (rs.next()) {
            Jogador jogador = new Jogador();
            jogador.setId(rs.getInt("id"));
            jogador.setNome(rs.getString("nome"));
            jogador.setPosicao(rs.getString("posicao"));
            jogador.setTime(rs.getInt("time"));
            vetJogador.add(jogador);
        }
        return vetJogador;

}
    
}
