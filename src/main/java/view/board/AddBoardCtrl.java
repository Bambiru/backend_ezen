package view.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.board.boardDAO;
import biz.board.boardVO;

/**
 * Servlet implementation class AddBoardCtrl
 */
@WebServlet("/AddBoardCtrl")
public class AddBoardCtrl extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request,response);
	}
	
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String campus = request.getParameter("campus");
		String boardtype = request.getParameter("boardtype");
		String title = request.getParameter("title");
		String email = request.getParameter("email");
		String content = request.getParameter("content");
		String id = request.getParameter("id");
		
		boardVO bean = new boardVO();
		bean.setCampus(campus);
		bean.setBoardtype(boardtype);
		bean.setTitle(title);
		bean.setEmail(email);
		bean.setContent(content);
		bean.setId(id);
		
		boardDAO bdao = new boardDAO();
		int cnt = bdao.addBoard(bean);
		int seq = bdao.getMaxSeq();
		if(cnt != 0) {
			response.sendRedirect("BoardInfoCtrl?seq="+seq);
		}
		
	}

}
