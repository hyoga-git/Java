package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DAO {

    private static final String URL = "jdbc:postgresql://localhost:5432/testdb";
    private static final String USER = "postgres";
    private static final String PASS = "0603";
    
    private PreparedStatement ps = null;
    
    private Connection con = null;  // Connectionオブジェクトの宣言

    

    // 接続メソッド
    public void connect() {
        try {
            System.out.println("接続を行う");
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection(URL, USER, PASS);
            System.out.println("接続が成功された");
        } catch (Exception e) {
            e.printStackTrace();
            con = null;  // 接続に失敗した場合、conをnullに設定
        }
    }

    public boolean insert(String name, String days, String times, String number_people, String kids) {
        boolean success = false;
        String sql = "INSERT INTO testdb_booking.booking (name, days, times, number_people, kids) VALUES (?, ?, ?, ?, ?)";

        try {
            connect();  // DBに接続
            ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, days);
            ps.setString(3, times);
            ps.setString(4, number_people);
            ps.setString(5, kids);

            int rowsAffected = ps.executeUpdate();  // データ挿入を実行

            if (rowsAffected > 0) {
                success = true;  // 挿入が成功した場合
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // リソースを閉じる
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return success;  // 挿入が成功した場合trueを返す
    }
}
