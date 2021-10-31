/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EDU.UJMDparcial2;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.Logger;
import javax.swing.JOptionPane;


public class ConexionMySQL {
    //Parametros para poder hacer la conexion a la base de datos 
   
    static String user = "root";
    static String pass = "programacion4";
    static String url = "jdbc:mysql://localhost/dbrestaurante";
    static Connection cnn;
    public Statement sentencia;
    public ResultSet resultado;
    
    public ConexionMySQL()
    {
        Conectar();
    }
    //establecer la conexion con la base en la parte que se le solicite
    public static Connection Conectar() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cnn = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException cnfex) {
            JOptionPane.showMessageDialog(null, "ConexionMySQL:" + cnfex.getMessage());
             System.out.println(cnfex.getMessage());
        } catch (SQLException sqlex) {
            JOptionPane.showMessageDialog(null, "ConexionMySQL:" + sqlex.getMessage());
            System.out.println(sqlex.getMessage());
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "ConexionMySQL:" + ex.getMessage());
            System.out.println(ex.getMessage());
        }
        return cnn;
    }

    public void cerrarConexion() {
        try {
            cnn.close();
        } catch (SQLException ex) {
            Logger.getLogger(Connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public ResultSet GetRs(){
        return resultado;
    }
    //ingreso de query de parte de la base 
    public void setRs(String consulta){
        try{
            sentencia = cnn.createStatement();
            this.resultado = sentencia.executeQuery(consulta);
        } catch(SQLException e2) {
            System.out.println("ERROR:Fallo en SQL: "+e2.getMessage());
            System.out.println("Fallo en MySQL " + e2.getMessage());
        }
    }
    
    public void setQuery(String query) throws SQLException{
        this.sentencia.executeUpdate(query);
    }
    public Statement createStatement() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}

/*import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class ConexionMySQL {
 public Connection conexion;
 public Statement sentencia;
 public ResultSet resultado;

public void ConectarBasedeDatos(){
 try {
 final String Controlador = "com.mysql.jdbc.Driver";
 Class.forName( Controlador );
 final String url_bd = "jdbc:mysql://localhost:3306/dbrestaurante";
 conexion = DriverManager.getConnection(url_bd,"root","root");
 sentencia = conexion.createStatement();
 } catch (ClassNotFoundException | SQLException ex) {
 JOptionPane.showMessageDialog(null,ex.getMessage(), "Error ", JOptionPane.ERROR_MESSAGE);
 }
 }
 public void DesconectarBasedeDatos() {
 try {
 if (conexion != null ) {
 if(sentencia != null) {
 sentencia.close();
 }
 conexion.close();
 }
 }
 catch (SQLException ex) {
 JOptionPane.showMessageDialog(null,ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
 System.exit(1);
 }
 }
 public Connection getConnection(){
 return conexion;
 }*/
