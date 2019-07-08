/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;
import java.sql.SQLException;
/**
 *
 * @author TONO
 */
public class Conexion {
    Connection con=null;
   
    public Connection conexion(){
       try {
           Class.forName("com.mysql.jdbc.Driver");
           con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/safetree","ricardo1","1234");
           System.out.println("conexion establecida diegoo");

       } catch (ClassNotFoundException | SQLException e) {
            System.out.println("conexion fallida");
           JOptionPane.showMessageDialog(null, "error de conexion "+e);
       }
       return con;
   }  
}
