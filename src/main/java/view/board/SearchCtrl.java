package view.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.board.boardDAO;
import biz.board.boardVO;

/**
 * Servlet implementation class SearchCtrl
 */
@WebServlet("/SearchCtrl")
public class SearchCtrl extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request,response);
	}
	
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String boardtype2 = request.getParameter("boardtype2");
		String campus = request.getParameter("campus");
		String search_board = request.getParameter("search_board");
		System.out.println(boardtype2);
		boardDAO bdao = new boardDAO();
		ArrayList<boardVO> boardList = null;
		if(boardtype2 == null) {
			boardList = bdao.selectCampusList(campus, search_board);			
		} else if (boardtype2 == null ) {
		
		} else if(boardtype2 != null && search_board != null && campus == null) {
			boardList = bdao.selectSearchBoard(search_board ,boardtype2);
		} else if(boardtype2 != null && search_board != null && campus != null){
			boardList = bdao.selectCamSearchBoard(search_board,boardtype2,campus);
		}
		
		
		
		
		
		
		request.setAttribute("boardtype2", boardtype2);
		request.setAttribute("boardList", boardList);
		RequestDispatcher dis = request.getRequestDispatcher("./index.jsp?content=searchBoard.jsp");
		dis.forward(request, response);
	}

}
