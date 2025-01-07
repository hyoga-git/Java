package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TopDAO;

@WebServlet(urlPatterns = {"/top", "/booking","/menu"})
public class CaffeTop extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) 
            throws IOException, ServletException {
        // DAOのインスタンスを作成して接続
        TopDAO dao = new TopDAO();
        dao.connect();  // 接続を確立

        // daysデータを取得
        List<String> days = dao.select();  // DAOからdaysを取得

        // daysがnullでないことを確認してリクエストにセット
        if (days != null) {
            System.out.println("取得した予約日一覧:");
            for (String day : days) {
                System.out.println(day);  // daysの内容をコンソールに出力
            }
            req.setAttribute("days", days);  // リクエストスコープにデータをセット
        } else {
            System.out.println("予約日のデータが取得できませんでした");
            req.setAttribute("error", "予約日のデータが取得できませんでした");
        }

        // リクエストパスによってフォワード先を変更
        String path = req.getServletPath();
        String jspPage;

        if ("/top".equals(path)) {
            jspPage = "jsp/index.jsp";  // /topの場合はtop.jsp
        } else if ("/booking".equals(path)) {
            jspPage = "jsp/booking.jsp";  // /bookingの場合はbooking.jsp
            
        }else if ("/menu".equals(path)) {
                jspPage = "jsp/menu.jsp";  // /bookingの場合はbooking.jsp
        } else {
            res.sendError(HttpServletResponse.SC_NOT_FOUND, "指定されたページが見つかりません");
            return;
        }

        // JSPページにフォワード
        RequestDispatcher dispatcher = req.getRequestDispatcher(jspPage);
        dispatcher.forward(req, res);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res) 
            throws IOException, ServletException {
        doPost(req, res);
    }
}

