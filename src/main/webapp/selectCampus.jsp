<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String campus = request.getParameter("campus");
%>

<div id="boardList">
	<div class="boardList_cover w1200">
	  <div class="boardList_title_area">
	      <div class="boardList_title">	
	          <h2>글목록</h2>
	          <p>이젠아카데미에서 알려드리는 다양한 소식을 만나보세요.</p>
	      </div>
	      <select name="campus" id="sel_campus" class="form-control" onchange="location = this.value;">
	      	<option value="">캠퍼스 선택</option>
	          <option value="BoardCamCtrl?campus=공식">공식</option>
	          <option value="BoardCamCtrl?campus=노원">노원</option>
	          <option value="BoardCamCtrl?campus=강남">강남</option>
	          <option value="BoardCamCtrl?campus=강북">강북</option>
	      </select>
	  </div> <!-- boardList_title_area -->
	    
	    <div class="command_board">
	        <ul class="tab_menu">
	            <li><a href="BoardCamCtrl?boardtype2=공지사항&campus=<%=campus %>" class="active">공지사항</a></li>
	            <li><a href="BoardCamCtrl?boardtype2=자유게시판&campus=<%=campus %>">자유게시판</a></li>
	            <li><a href="BoardCamCtrl?boardtype2=건의사항&campus=<%=campus %>">건의사항</a></li>
	        </ul>
	    </div>
	
	    <table class="table table-striped table-hover">
	    	<c:forEach var="bean" items="${boardList}">
		        <tr>
		            <td><span class="tb_category">${bean.boardtype}</span></td>
		            <td><span class="tb_content"><a href="BoardInfoCtrl?seq=${bean.seq}">${bean.title}</a></span></td>
		            <td><span class="tb_day">${bean.regdate}</span></td>
		        </tr>
	    	</c:forEach>
	    </table>
	
	    <div class="paging_number">
	    	
   	        <a href="addBoard.jsp" class="btn_board_write">
                <i class="fa-solid fa-pen"></i>
                글쓰기
            </a>
	    	
	        <ul>
	            <li><a href="#"><span><i class="fa-solid fa-angles-left"></i></span></a></li>
	            <li><a href="#"><span><i class="fa-solid fa-angle-left"></i></span></a></li>
	            <li class="active"><a href="#"><span>1</span></a></li>
	            <li><a href="#"><span>2</span></a></li>
	            <li><a href="#"><span>3</span></a></li>
	            <li><a href="#"><span>4</span></a></li>
	            <li><a href="#"><span>5</span></a></li>
	            <li><a href="#"><span><i class="fa-solid fa-angle-right"></i></span></a></li>
	            <li><a href="#"><span><i class="fa-solid fa-angles-right"></i></span></a></li>
	        </ul>
	        <%
	        	String boardtype2 = (String)request.getAttribute("boardtype2");
	        %>
	        <form action="SearchCtrl">
	            <div class="search_box">
	            	<input type="hidden" name="boardtype2" value="<%=boardtype2%>"/>
	            	<input type="hidden" name="campus" value="<%=campus %>"/>
	                <input type="text" id="search_text" name="search_board" placeholder="검색어를 입력하세요">
	                <button type="submit">
	                    <i class="fa-solid fa-magnifying-glass"></i>
	                </button>
	            </div>
	        </form>
	    </div>
	</div>
</div>