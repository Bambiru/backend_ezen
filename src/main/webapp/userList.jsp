<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="userList">
	<div class="userList_cover w1200">
	  <div class="userList_title_area">
	      <div class="userList_title">	
	          <h2>회원목록</h2>
	      </div>
	    <table class="table table-striped table-hover">
		    <tr>
	            <td>아이디</td>
	            <td>이름</td>
	            <td>이메일</td>
	            <td>성별</td>
	            <td>전화번호</td>
	            <td>생일</td>
	            <td>캠퍼스</td>
	        </tr>
	    	<c:forEach var="bean" items="${userList}">
		        <tr>
		            <td><span class="tb_category">${bean.id}</span></td>
		            <td><span class="tb_content">${bean.name}</span></td>
		            <td><span class="tb_day">${bean.email}</span></td>
		            <td><span class="tb_day">${bean.gender}</span></td>
		            <td><span class="tb_day">${bean.tel}</span></td>
		            <td><span class="tb_day">${bean.birthdate}</span></td>
		            <td><span class="tb_day">${bean.campus}</span></td>
		        </tr>
	    	</c:forEach>
	    </table>
	   </div>
	</div>
</div>