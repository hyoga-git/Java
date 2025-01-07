package controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;

@WebServlet("/complete")

public class Caffecomp extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) 
            throws IOException, ServletException {
        req.setCharacterEncoding("utf-8");
        
        String name = req.getParameter("name");
        String days = req.getParameter("days");
        String times = req.getParameter("times");
        String number_people = req.getParameter("number");
        String kids = req.getParameter("kids");

        System.out.println(name);
        System.out.println(days);
        System.out.println(times);
        System.out.println(number_people);
        System.out.println(kids);
        DAO dao = new DAO();
        boolean success = dao.insert(name, days, times, number_people, kids);

        if (success) {
            System.out.println("予約が成功しました!");
            req.setAttribute("message", "予約が成功しました!");
        } else {
            System.out.println("予約に失敗しました!");
            req.setAttribute("message", "予約に失敗しました。もう一度お試しください。");
        }
        
        req.setAttribute("name", name);

        // 予約完了ページへ遷移
        RequestDispatcher rd = req.getRequestDispatcher("jsp/bookingOK.jsp");
        rd.forward(req, res);
    }

    public void doGet(HttpServletRequest req, HttpServletResponse res) 
            throws IOException, ServletException {
        doPost(req, res);
    }
}