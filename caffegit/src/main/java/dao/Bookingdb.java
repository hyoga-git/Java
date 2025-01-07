package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Bookingdb {

    private static final String URL = "jdbc:postgresql://localhost:5432/testdb";
    private static final String USER = "postgres";
    private static final String PASS = "0603";
    private Connection con = null;  // Connectionオブジェクトの宣言

    // 接続メソッド
    public void connect() {
        try {
            System.out.println("接続を行うcaffeDB");
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection(URL, USER, PASS);
            System.out.println("接続が成功された");
        } catch (Exception e) {
            e.printStackTrace();
            con = null;  // 接続に失敗した場合、conをnullに設定
        }
    }

    // データ取得メソッド
    public String select(int StuNo) {
        if (con == null) {
            System.out.println("データベース接続が確立されていません");
            return null; // 接続が確立されていなければnullを返す
        }
        Statement stmt = null;
        ResultSet rs = null;
        String result = null;
        String sql = "SELECT name FROM testdb_booking.booking";  // 適切なSQLクエリを設定

        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery(sql);
            if (rs.next()) {
                result = rs.getString("name");  // 結果セットからデータを取得
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();  // リソースを閉じる
                if (stmt != null) stmt.close();  // リソースを閉じる
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return result;
    }
}
