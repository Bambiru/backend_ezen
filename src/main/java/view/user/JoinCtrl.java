package view.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.user.userDAO;
import biz.user.userVO;

@WebServlet("/JoinCtrl")
public class JoinCtrl extends HttpServlet {
	
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
		String password2 = request.getParameter("password2");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String birthdate = request.getParameter("birthdate");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String certification = request.getParameter("certification");
		String classification = request.getParameter("classification");
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
		bean.setName(name);
		bean.setGender(gender);
		bean.setBirthdate(birthdate);
		bean.setEmail(email);
		bean.setTel(tel);
		bean.setCertification(certification);
		bean.setClassification(classification);
		bean.setCampus(campus);
		bean.setReception(reception);
		
		userDAO udao = null;
		
			udao = new userDAO();
			int cnt = udao.joinMember(bean);
			if (cnt != 0) {
				response.sendRedirect("index.jsp");
		}
		
	}

}
