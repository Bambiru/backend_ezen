<%@page import="biz.board.boardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <div class="boardInfo_cover w1200">
	 <div class="boardInfo_title_area">
	     <div class="boardInfo_title">
	         <h2>글 상세보기</h2>
	         <p>이젠아카데미에서 알려드리는 다양한 소식을 만나보세요.</p>
	     </div>
	 </div> 

	 <div class="view_box">
	     <div class="header_wrap">
	         <h4>${bean.title}</h4>
	         <span>${bean.regdate}</span>
	     </div>
	     <div class="vb_contents">
	         <p>${bean.content}</p>
	     </div>
	 </div>
	
	 <div class="boardInfo_btn_wrap">
	     <a href="#" class="btn_prev">
	         <img src="./images/boardInfo/btn-board-arrow-prev.png" alt="이전 페이지">
	         Prev
	     </a>
     <% 
     boardVO bean = (boardVO)request.getAttribute("bean");
     String id = (String)session.getAttribute("id");
     if(id.equals(bean.getId()) || id.equals("admin") ){
     %>
	     <a href="UpdateBoardCtrl1?seq=${bean.seq}" class="btn_update">
	         <i class="fa-sharp fa-solid fa-pen-to-square"></i>
	         수정
	     </a>
	     <a href="BoardListCtrl" class="btn_boardList">
	         <i class="fa-solid fa-list-ul"></i>
	         목록보기
	     </a>
	     <a href="DeleteBoardCtrl?seq=${bean.seq}" class="btn_delete">
	         <i class="fa-solid fa-trash"></i>
	         삭제
	     </a>
     <%
     }else{
     %>
	     <a href="BoardListCtrl" class="btn_boardList">
	         <i class="fa-solid fa-list-ul"></i>
	         목록보기
	     </a>
     <%
     }
     %>
       <a href="#" class="btn_next">
           Next
           <img src="./images/boardInfo/btn-board-arrow-next.png" alt="다음 페이지">
       </a>
   	</div>
</div>
