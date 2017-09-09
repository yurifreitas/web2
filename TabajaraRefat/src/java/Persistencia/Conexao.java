/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.util.logging.PlatformLogger;

public class Conexao {
    private String host;
    private String port;
    private String user;
    private String password;
    private String database;

   

    public Conexao() {
        this.port = "5432";
        this.user = "postgres";
        this.password = "postgres";
        this.database = "Tabajara";
        this.host = "localhost";
    }
    
    public Connection getConnection(){
        String url = "jdbc:postgresql://" + this.host + ":" + this.port + "/" + this.database;
        try{
            Class.forName("org.postgresql.Driver");
            return DriverManager.getConnection(url, user, password);
        }catch (SQLException ex){
            System.out.println("Conectou");
            Logger.getLogger(Conexao.class.getName()).log(Level.SEVERE, null, ex);
        }catch (ClassNotFoundException ex){
            System.out.println("erro");
            Logger.getLogger(Conexao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return null;
    }

}
