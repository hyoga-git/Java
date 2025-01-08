package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DAO {

    private static final String URL = "dpg-ctuins0gph6c73er4q6g-a.oregon-postgres.render.com";
    private static final String USER = "hyoga";
    private static final String PASS = "PbTtS53Tgxu6xEjUd2qb7QdTlfGlbIMp";
    
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
        String sql = "INSERT INTO public.booking (name, days, times, number_people, kids) VALUES (?, ?, ?, ?, ?)";

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
