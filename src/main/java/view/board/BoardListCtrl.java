package view.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.board.boardDAO;
import biz.board.boardVO;

/**
 * Servlet implementation class BoardListCtrl
 */
@WebServlet("/BoardListCtrl")
public class BoardListCtrl extends HttpServlet {
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
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		if(id == null) {
			response.sendRedirect("login.jsp");
		}else {
		
			boardDAO bdao = new boardDAO();
			ArrayList<boardVO> boardList = null;
			if(boardtype2 != null) {
				boardList = bdao.selectBoardList(boardtype2);
			}else if(campus != null) {
				boardList = bdao.selectCampusList(campus,search_board);
			} else {
				boardList = bdao.allBoardList();
			}                               
			
			request.setAttribute("boardtype2", boardtype2);
			request.setAttribute("boardList", boardList);
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp?content=boardList.jsp");
			dis.forward(request, response);
		
		}
		
	}

}
