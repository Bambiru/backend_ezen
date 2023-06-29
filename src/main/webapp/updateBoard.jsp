<%@page import="biz.board.boardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <div id="updateBoard">
        <div class="title">
            <h1>게시글 수정</h1>
        </div>
        <div class="board_content">
            <form action="UpdateBoardCtrl2" method="post">
            	<input type="hidden" name="seq" value="${bean.seq}"/>
                <div class="table-form first">
                    <div class="label">
                        <label for="campus">캠퍼스선택</label>
                        <span>*</span>
                    </div>
                    <div class="input">
                        <select name="campus" id="campus" class="form-control">
                        <%
                        	boardVO bean = (boardVO)request.getAttribute("bean");
                        	String campus = bean.getCampus();
                        	if(campus.equals("강남"))
                        %>
                            <option value="캠퍼스선택" selected>캠퍼스를 선택하세요</option>
                            <option value="강남">강남</option>
                            <option value="종로">종로</option>
                            <option value="신촌">신촌</option>
                            <option value="노원">노원</option>
                            <option value="상봉">상봉</option>
                            <option value="송파">송파</option>
                            <option value="강서">강서</option>
                            <option value="화곡">화곡</option>
                            <option value="신림">신림</option>
                        </select>
                    </div>
                </div>
                <div class="table-form">
                    <div class="label">
                        <label for="boardtype">게시판선택</label>
                        <span>*</span>
                    </div>
                    <div class="input">
                        <select name="boardtype" id="boardtype" class="form-control">
                        <%
                        	String boardType = bean.getBoardtype();
                        	if(boardType.equals("게시판선택")){
                        %>		
                            <option value="게시판선택" selected>게시판을 선택하세요</option>       
                            <option value="공지사항">공지사항</option>
                            <option value="자유게시판">자유게시판</option>
                            <option value="건의사항">건의사항</option>                 
                        <%
                        	}else if(boardType.equals("공지사항")){
                        %>		
                        	<option value="게시판선택" >게시판을 선택하세요</option>       
                            <option value="공지사항" selected>공지사항</option>
                            <option value="자유게시판">자유게시판</option>
                            <option value="건의사항">건의사항</option> 
  							<%
                        	}else if(boardType.equals("자유게시판")){
                        %>		
                        	<option value="게시판선택" >게시판을 선택하세요</option>       
                            <option value="공지사항" >공지사항</option>
                            <option value="자유게시판" selected>자유게시판</option>
                            <option value="건의사항">건의사항</option> 
                            	<%
                        	}else if(boardType.equals("건의사항")){
                        %>		
                        	<option value="게시판선택" >게시판을 선택하세요</option>       
                            <option value="공지사항" >공지사항</option>
                            <option value="자유게시판">자유게시판</option>
                            <option value="건의사항" selected>건의사항</option> 
                        <%
                        	}
                        %>
                            
                        </select>
                    </div>
                </div>
                <div class="table-form">
                    <div class="label">
                        <label for="title">제목</label>
                        <span>*</span>
                    </div>
                    <div class="input">
                        <input type="text" name="title" value="${bean.title}" class="form-control">
                    </div>
                </div>
                <div class="table-form">
                    <div class="label">
                        <label for="email">이메일</label>
                        <span>*</span>
                    </div>
                    <div class="input">
                        <input type="email" name="email" value="${bean.email}" class="form-control" readonly>
                    </div>
                </div>
                <div class="table-form last">
                    <div class="label">
                        <label for="content">내용</label>
                        <span>*</span>
                    </div>
                    <div class="input">
                        <textarea name="content" id="content" cols="60" rows="10" class="form-control" >${bean.content}</textarea>
                    </div>
                </div>

                <div class="submit">
                    <input type="submit" value="글 수정">
                </div>
            </form>
        </div>
    </div>
