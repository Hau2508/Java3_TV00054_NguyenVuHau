package poly.com.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import poly.com.model.UserModel;

@WebServlet("/bai4")
public class Bai4Controller extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	// TODO Auto-generated method stub
            throws ServletException, IOException {

    	UserModel user = new UserModel("Nguyễn Vủ Hậu", true, "VN");

        req.setAttribute("user", user);
        req.setAttribute("editable", true);

        req.getRequestDispatcher("bai4.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
	// TODO Auto-generated method stub
            throws ServletException, IOException {

        String fullname = req.getParameter("fullname");
        boolean gender = "true".equals(req.getParameter("gender"));
        String country = req.getParameter("country");
        UserModel user = new UserModel(fullname, gender, country);

        req.setAttribute("user", user);
        req.setAttribute("editable", true);
        req.setAttribute("message", "Đã cập nhật dữ liệu thành công!");

        req.getRequestDispatcher("bai4.jsp").forward(req, resp);
    }
}
