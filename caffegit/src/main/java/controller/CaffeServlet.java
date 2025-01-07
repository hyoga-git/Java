package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.BeanCaffe;

@WebServlet("/form")
public class CaffeServlet extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) 
            throws IOException, ServletException {
        req.setCharacterEncoding("utf-8");
        String day = req.getParameter("bookingDay");  // ここで「3」が取得される
        System.out.println("Booking Day: " + day);  // デバッグ用ログ
        
        BeanCaffe beanCaffe = new BeanCaffe();
        beanCaffe.setDay(day);
        
        req.setAttribute("beanCaffe", beanCaffe);
        
        RequestDispatcher rd = req.getRequestDispatcher("jsp/bookingform.jsp");
        rd.forward(req, res);
    }
    public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
    	doPost(req,res);
    }
    
}
