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


@WebServlet("/BoardCamCtrl")
public class BoardCamCtrl extends HttpServlet {
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
		
		boardDAO bdao = new boardDAO();
		ArrayList<boardVO> boardList = null;
		// 캠퍼스가 있고, boardtype2이 없으면

		
		if(campus == null && boardtype2 != null) {
			campus = "";
			boardList = bdao.selectCampus(campus,boardtype2);
		// 캠퍼스가 없고, boardtype2이 없으면
		}
		else {

		if(campus.equals("공식") && boardtype2 == null){
				boardList = bdao.allBoardList();
				if(boardtype2 != null) {
					boardList = bdao.selectCampus(campus,boardtype2);
				}
		} else if(campus != null && boardtype2 == null) {
			boardList = bdao.selectCampus(campus);
		// 캠퍼스가 있고, boardtype2이 있으면
		}else if(campus != null && boardtype2 != null) {
			boardList = bdao.selectCampus(campus,boardtype2);
		// 캠퍼스가 없고, boardtype2이 있으면
		} else {
			boardList = bdao.allBoardList();
		}
		
		}
		
		request.setAttribute("boardtype2", boardtype2);
		request.setAttribute("boardList", boardList);
		RequestDispatcher dis = request.getRequestDispatcher("./index.jsp?content=selectCampus.jsp");
		dis.forward(request, response);
	}
	
	}