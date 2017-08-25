
package Persistencia;

import Modelos.Time;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TMDAO {
       public boolean alterarTime(Time time) throws SQLException {        
        Connection connection = new Conexao().getConnection();
        String sql = "UPDATE time SET nome = ? WHERE id = ?;";
        PreparedStatement sqlP = connection.prepareStatement(sql);
        sqlP.setString(1, time.getNome());
        sqlP.setInt(2, time.getId());
        int resultado = sqlP.executeUpdate();
        sqlP.close();
        connection.close();
        return resultado == 1;

    }

    public Time selecionarTime(int id) throws SQLException {
        Time time = new Time();
        Connection connection = new Conexao().getConnection();
        String sql = "SELECT * FROM time WHERE id = ?;";
        PreparedStatement sqlP = connection.prepareStatement(sql);
        sqlP.setInt(1, id);
        ResultSet rs = sqlP.executeQuery();
        if (rs.next()) {
            time.setId(rs.getInt("id"));
            time.setNome(rs.getString("nome"));
        }
        sqlP.close();
        connection.close();
        return time;
    }

    public boolean excluirTime(int id) throws SQLException {
        Connection connection = new Conexao().getConnection();
        String sql = "DELETE FROM time WHERE id = ?;";
        PreparedStatement sqlP = connection.prepareStatement(sql);
        sqlP.setInt(1, id);
        int resultado = sqlP.executeUpdate();
        sqlP.close();
        connection.close();
        return resultado == 1;

    }

    public boolean adicionarTime(Time time) throws SQLException {
        Connection connection = new Conexao().getConnection();
        String sql = "INSERT INTO time (nome) VALUES (?)";
        PreparedStatement sqlP = connection.prepareStatement(sql);
        sqlP.setString(1, time.getNome());
        int resultado = sqlP.executeUpdate();
        sqlP.close();
        connection.close();
        return resultado == 1;

    }

    public ArrayList<Time> selecionarT() throws SQLException {
        ArrayList<Time> vetTime=  new ArrayList();
        Connection connection = new Conexao().getConnection();
        String sql = "SELECT * FROM time ORDER BY id";
        PreparedStatement sqlP = connection.prepareStatement(sql);
        ResultSet rs = sqlP.executeQuery();
        while (rs.next()) {
            Time time = new Time();
            time.setId(rs.getInt("id"));
            time.setNome(rs.getString("nome"));
            vetTime.add(time);
        }
        return vetTime;

}
    
}
