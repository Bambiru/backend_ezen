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

/**
 * Servlet implementation class UpdateBoardCtrl1
 */
@WebServlet("/UpdateBoardCtrl1")
public class UpdateBoardCtrl1 extends HttpServlet {
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
		boardDAO bdao = new boardDAO();
		boardVO bean = bdao.getOneBoard(seq);
		request.setAttribute("bean", bean);
		RequestDispatcher dis = request.getRequestDispatcher("./index.jsp?content=updateBoard.jsp");
		dis.forward(request, response);
		
	}

}
