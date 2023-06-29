package view.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.user.userDAO;
import biz.user.userVO;


@WebServlet("/LoginCtrl")
public class LoginCtrl extends HttpServlet {

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
		userVO bean = udao.loginMember(id, password);
		
		if(bean == null) {
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('로그인을 실패하였습니다. 아이디 비밀번호를 확인해주세요.');");
			out.println("history.back();");
			out.println("</script>");
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("id", bean.getId());
		session.setAttribute("name", bean.getName());
		session.setAttribute("email", bean.getEmail());
		RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
		dis.forward(request, response);
		
		
	}
}
