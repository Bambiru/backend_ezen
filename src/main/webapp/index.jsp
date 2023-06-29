<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
	
	String content = request.getParameter("content");
	if(content == null){
		content = "/include/main.jsp";
	}
	
	String id = (String)session.getAttribute("id");
%>    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="26조">
    <meta name="description" content="이젠아카데미">
    <!-- 부트스트랩 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap@3.3.7/dist/css/bootstrap.min.css">

    <!-- CSS -->
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/font.css">
    
    <!-- 폰트어썸 6.1 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- 스와이퍼 CSS -->
    <link rel="stylesheet" href="./css/js_swiper-bundle.css">
    <link rel="stylesheet" href="./css/jh_swiper-bundle.css">
    <link rel="stylesheet" href="./css/cr_swiper-bundle.css">
	    
    <link rel="stylesheet" href="./css/header.css">
	<link rel="stylesheet" href="./css/addBoard.css">
    <link rel="stylesheet" href="./css/boardInfo.css">
	
	<link rel="stylesheet" href="./css/swiperEzen.css">
	
	<!-- JS -->
	<script src="./js/header.js" defer></script>
	<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
	<script src="https://kit.fontawesome.com/92d126516b.js" crossorigin="anonymous"></script>
	<!-- 제이쿼리 -->
	<script src="./js/jquery-1.12.4.min.js"></script>
	<script src="./js/jquery-3.3.1.min.js"></script>
	<title>이젠아카데미</title>
</head>
<body>
    <div id="wrap">
		<header>
		    <jsp:include page="./include/header.jsp"></jsp:include>
		</header>
		
		<main>
			<div class="content">
	 			<jsp:include page="<%=content %>"/>    
			</div>
		</main>
	
	    <footer>
	        <jsp:include page="/include/footer.jsp"></jsp:include>
	    </footer>
    </div>
    <!-- a # 알림창처리 -->
   <div class="jiseokalert">
       <div id="jsImg">
           <img src="./images/alert.png" alt="준비중입니다!">
       </div>
   </div>
   
	<!-- 페이지 JS -->
    <script src="./js/chaerim.js"></script>
    <!-- 스와이퍼 플러그인 -->
    <script src="./js/swiper-bundle.js"></script> 
    <!-- 페이지 JS -->
    <script src="./js/hj_sol_js_jh.js"></script>
</body>
</html>