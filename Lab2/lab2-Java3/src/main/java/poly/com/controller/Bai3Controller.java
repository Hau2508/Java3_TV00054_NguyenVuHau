package poly.com.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/bai3")
public class Bai3Controller extends HttpServlet{
 
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Map<String,Object> map =new HashMap<>();
		map.put("fullname", "Nguyễn Vủ Hậu");
		map.put("gender", true);
		map.put("country", "VN");
		req.setAttribute("user", map);
		req.setAttribute("editabled", true);
		
		req.getRequestDispatcher("bai3.jsp").forward(req, resp);
	}
	
	@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

        String fullname = req.getParameter("fullname");
        String genderParam = req.getParameter("gender");
        String country = req.getParameter("country");
        boolean gender = "true".equals(genderParam);
        System.out.println("Fullname: " + fullname);
        System.out.println("Gender: " + gender);
        System.out.println("Country: " + country);
        Map<String, Object> map = new HashMap<>();
        map.put("fullname", fullname);
        map.put("gender", gender);
        map.put("country", country);
        req.setAttribute("user", map);
        req.setAttribute("editable", true);
        req.setAttribute("message", " Đã cập nhật dữ liệu thành công!");

        req.getRequestDispatcher("bai3.jsp").forward(req, resp);
	}
}
