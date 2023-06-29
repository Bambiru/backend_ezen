package view.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.user.userDAO;
import biz.user.userVO;

@WebServlet("/UpdateMemberCtrl")
public class UpdateMemberCtrl extends HttpServlet {
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
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String [] campuses = request.getParameterValues("campus");
		String campus = "";
		for(int i=0; i<campuses.length; i++) {
		    campus += campuses[i];
		    // 마지막 요소가 아닐 경우만 쉼표를 추가
		    if (i < campuses.length - 1) {
		        campus += ",";
		    }
		}
		String reception = request.getParameter("reception");
		
		userVO bean = new userVO();
		bean.setId(id);
		bean.setPassword(password);
		bean.setEmail(email);
		bean.setTel(tel);
		bean.setCampus(campus);
		bean.setReception(reception);
		
		
		userDAO udao = new userDAO();
		int cnt = udao.updateMember(bean);
		if(cnt !=0) {
			response.sendRedirect("index.jsp");
		}
		
		
	}

}
