package view.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.board.boardDAO;
import biz.board.boardVO;

@WebServlet("/UpdateBoardCtrl2")
public class UpdateBoardCtrl2 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request,response);
	}
	
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		int seq = Integer.parseInt(request.getParameter("seq"));
		String campus = request.getParameter("campus");
		String boardtype = request.getParameter("boardtype");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		boardVO bean = new boardVO();
		bean.setSeq(seq);
		bean.setCampus(campus);
		bean.setBoardtype(boardtype);
		bean.setTitle(title);
		bean.setContent(content);
		
		boardDAO bdao = new boardDAO();
		int cnt = bdao.updateBoard(bean);
		if(cnt != 0) {
			response.sendRedirect("BoardInfoCtrl?seq="+bean.getSeq());
		}
		
	}

}
