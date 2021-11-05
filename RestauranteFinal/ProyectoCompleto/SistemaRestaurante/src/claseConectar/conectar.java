package claseConectar;

import java.sql.*;
import javax.swing.*;

/**
 *
 * @author JCerna
 */

public class conectar {

    private static String url = "jdbc:mysql://localhost/restaurante";
    private static String usuario = "root";
    private static String contraseña = "programacion4";

    public static Connection conexion() {
        Connection conexion = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, contraseña);
            System.out.println("Conexion establecida a la base de datos");
        } catch (Exception e) {
            System.out.println("Error: " + e);

        }
        return conexion;
    }

}
