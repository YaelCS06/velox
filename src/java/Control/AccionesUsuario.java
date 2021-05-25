package Control;

import Usuario.Usuario;
import static java.lang.reflect.Array.set;
import java.sql.*;
import java.util.*;
import java.text.*;

public class AccionesUsuario {
    
    public static int registrarUsuario(Usuario u){
        
        int state = 0;
        
        try{
            
            Connection con = Conexion.getConnection();
            String q = "{call PruebaInsertar2(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
            
            CallableStatement  proc = con.prepareCall(q);
            proc.setString(1, u.getNombre());
            proc.setString(2, u.getAppat());
            proc.setString(3, u.getApmat());
            proc.setString(4, u.getCorreo());
            proc.setInt(5, u.getEdad());
            proc.setInt(6, u.getSemestre());
            proc.setString(7, u.getGenero());
            proc.setString(8, u.getNom_usu());
            proc.setString(9, u.getCorreo());
            proc.setString(10, u.getPass_usu());
            
            state = proc.executeUpdate();
            System.out.println("Agregar usuario a dos tablas de manera exitosa");
            con.close();
            
        }catch(Exception ed){
            System.out.println("Error al registrar usuario");
            System.out.println(ed.getMessage());
        }
        return state;
    }
    public static int IniciarUsuario(Usuario u){
        
        int state = 0;
        Connection con = Conexion.getConnection();
        Statement set = null;
        ResultSet rs = null;
        try{
            String q = "select id from registro where email='"+u.getCorreo()+"' and pass='"+u.getPass_usu()+"' ";

            set = con.createStatement();
            rs = set.executeQuery(q);
            while(rs.next()){
            state = 1;
            }
            rs.close();
            set.close();
                            
        }catch(SQLException ed){
            System.out.println("No se encontro");
            System.out.println(ed.getMessage());
            System.out.println("Usuario o contraseña incorrecto");
            
        }
        return state;
                   
        
    }
    
}
