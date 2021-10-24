/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectorestaurante.Modelo;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.Logger;
import javax.swing.JOptionPane;


public class conexion {
    //Parametros para poder hacer la conexion a la base de datos 
   
    static String user = "root";
    static String pass = "programacion4";
    static String url = "jdbc:mysql://localhost/dbrestaurante";
    static Connection cnn;
    private Statement s = null;
    private ResultSet rs = null;
    
    public conexion()
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
            Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public ResultSet GetRs(){
        return rs;
    }
    //ingreso de query de parte de la base 
    public void setRs(String consulta){
        try{
            s = cnn.createStatement();
            this.rs = s.executeQuery(consulta);
        } catch(SQLException e2) {
            System.out.println("ERROR:Fallo en SQL: "+e2.getMessage());
            System.out.println("Fallo en MySQL " + e2.getMessage());
        }
    }
    
    public void setQuery(String query) throws SQLException{
        this.s.executeUpdate(query);
    }
    public Statement createStatement() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}