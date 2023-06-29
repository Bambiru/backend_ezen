package view.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.board.boardDAO;
import biz.board.boardVO;
import biz.user.userDAO;


@WebServlet("/PwcheckCtrl")
public class PwcheckCtrl extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request,response);
	}
	
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		userDAO udao = new userDAO();
		String pw = udao.getPassword(id);
		System.out.println(id);
		
		request.setAttribute("id", id);
		request.setAttribute("password", password);
		if(password.equals(pw)) {
			RequestDispatcher dis = request.getRequestDispatcher("My_info2Ctrl");
			dis.forward(request, response);
		}else {
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('비밀번호를 확인해주세요.');");
			out.println("history.back();");
			out.println("</script>");
		}
		
	}

}
