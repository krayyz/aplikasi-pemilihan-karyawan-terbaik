package Koneksi;
import java.sql.*;
/*
@author JR
*/
public class koneksi {
    private static Connection config;
    public static Connection configDB(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException exc) {
            System.err.println("koneksi gagal "+exc); //perintah menampilkan error pada koneksi
        }            
        String url="jdbc:mysql://127.0.0.1:3306/spk_karyawan"; //url database
        try{
            config = DriverManager.getConnection(url,"root","");
        }catch(SQLException e){
            System.out.printf(e.getMessage());
        }
        return config;
    }
}
