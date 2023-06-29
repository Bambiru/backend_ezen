package view.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.user.userDAO;
import biz.user.userVO;

@WebServlet("/My_info2Ctrl")
public class My_info2Ctrl extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request,response);
	}
	
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String id = (String)request.getAttribute("id");
		String password = (String)request.getAttribute("password");
		
		userDAO udao = new userDAO();
		userVO user = udao.getMemberInfo(id, password);
		
		request.setAttribute("user", user);
		RequestDispatcher dis = request.getRequestDispatcher("my_info2.jsp");
		dis.forward(request, response);
		
		
		
	}

}
