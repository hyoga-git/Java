package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TopDAO {

    private static final String URL = "jdbc:postgresql://localhost:5432/testdb";
    private static final String USER = "postgres";
    private static final String PASS = "0603";
    
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

    // daysの全てを取得するメソッド
    public List<String> select() {
        if (con == null) {
            System.out.println("データベース接続が確立されていません");
            return null;  // 接続が確立されていなければnullを返す
        }

        List<String> daysList = new ArrayList<>();  // 結果を格納するリスト
        Statement stmt = null;
        ResultSet rs = null;
        
        String sql = "SELECT days FROM testdb_booking.booking";  // 適切なSQLクエリを設定

        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                String days = rs.getString("days");  // 結果セットからdaysを取得
                daysList.add(days);  // リストに追加
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
        
        return daysList;  // 取得した全てのdaysを返す
    }
}
