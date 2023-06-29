<%@page import="biz.user.userVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale1.0">
    <meta name="author" content="26조">
    <meta name="description" content="Protfolio, ezen">
    
    <title>이젠아카데미</title>

    <!-- 폰트어썸 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" integrity="sha512-q3eWabyZPc1XTCmF+8/LuE1ozpg5xxn7iO89yfSOd5/oKvyqLngoNGsx8jq92Y8eXJ/IRxQbEC+FGSYxtk2oiw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- favorite Icon 설정하기-->
    <link rel="shortcut icon" href="./images/favicon/favicon.png">
    <link rel="apple-touch-icon=precomposed" href="./images/favicon/favicon_180.png">
    <!-- 스크롤 안보이게 하기 CSS -->
    <link rel="stylesheet" href="./css/display_none_scrollbar.css">
    <!-- 1.제이쿼리 코어파일 -->
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="./js/jquery-3.4.1.min.js"></script>
    <!-- 2.제이쿼리 CDN 방식이용 -->
    <script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    <!-- 부트스트랩 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <!-- CSS파일 -->
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/login.css">
    <link rel="stylesheet" href="./css/join2.css">
</head>
<body>
<%
	userVO user = (userVO)request.getAttribute("user");
	// DB에서 campus값을 가져오는 코드
    String campus = user.getCampus()/* DB에서 가져온 문자열 */;
    
    // campus 값을 배열로 변환
    String[] campuses = campus.split(",");
    // 성별
    String gender = user.getGender();
    // 인증방법
    String certification = user.getCertification();
    // 회원구분
    String classification = user.getClassification();
    // 수신동의
    String reception = user.getReception();
%>
        <div id="login_ezen">
            <!-- header -->
            <header>
                <a href="index.jsp"><h1>이젠아카데미</h1></a>
            </header>
            <!-- /header -->
            <!-- /main -->
            <main>
                <section id="box">
                    <form action="UpdateMemberCtrl" method="post" id="myForm">
                        <fieldset>
                            <div class="login_form">
                                <div class="main_title">

                                    <p>회원 정보 수정</p>
                                </div>
                                <div class="form-floating login_input">
                                    <!-- input누르면, value="영문/숫자 중 1개 이상 포함 4~12자" 추가 -->
                                    <input type="text" class="form-control inputFloating" name="id" id="id" value="${user.id}" readonly />
                                    <label for="id">아이디 <span>*</span></label>
                                </div>

                                <div class="form-floating login_input">
                                    <!-- input누르면, value="영문/숫자 중 1개 이상 포함 4~12자" 추가 -->
                                    <input type="password" class="form-control inputFloating" name="password" id="password" value="${user.password}"/>
                                    <label for="password">비밀번호 <span>*</span></label>
                                </div>
                                <div class="flex-group">
                                    <div class="form-floating login_input">
                                        <!-- input누르면, value="영문/숫자 중 1개 이상 포함 4~12자" 추가 -->
                                        <input type="text" class="inputFloating form-control" name="name" id="name" value="${user.name}" readonly />
                                        <label for="name">이름 <span>*</span></label>
                                    </div>
                                    <div class="form-floating login_input">
                                        <select name="gender" class=" inputFloating" disabled id="gender">
                                            <option value selected disabled>성별</option>
                                            <option value="남성">남성</option>
                                            <option value="여성">여성</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-floating login_input">
                                    <!-- input누르면, value="영문/숫자 중 1개 이상 포함 4~12자" 추가 -->
                                    <input type="text" class="form-control inputFloating" name="birthdate" id="birthdate" value="${user.birthdate}" readonly />
                                    <label for="birthdate">생년월일 <span>*</span></label>
                                </div>

                                <div class="form-floating login_input">
                                    <!-- input누르면, value="영문/숫자 중 1개 이상 포함 4~12자" 추가 -->
                                    <input type="text" class="form-control inputFloating" name="email" id="email" value="${user.email}" />
                                    <label for="email">이메일 <span>*</span></label>
                                </div>

                                <div class="form-floating login_input">
                                    <!-- input누르면, value="영문/숫자 중 1개 이상 포함 4~12자" 추가 -->
                                    <input type="tel" class="form-control inputFloating" name="tel" id="tel" value="${user.tel}" />
                                    <label for="tel">휴대폰 <span>*</span></label>
                                </div>

                                <!-- 회원구분 -->
                                <div>
                                    <div class="sub_title">
                                        <h3>회원구분</h3>
                                        <div class="line"></div>
                                    </div>
                                    <div class="flex_part">
                                            <label for="employee" class="radio_part">
                                                <input type="radio" name="classification" id="employee" value="employee" disabled <% if ("employee".equals(classification)) out.print("checked"); %>/>
                                                <span></span>
                                                수강생/직원
                                            </label>
                                        
                                            <label for="common" class="radio_part">
                                                <input type="radio" name="classification" id="common" value="common" disabled <% if ("common".equals(classification)) out.print("checked"); %>/>
                                                <span></span>
                                                일반회원
                                            </label>
                                    </div>
                                </div>

                                <!-- 캠퍼스 구분 -->
                                <div>
                                    <ul class="check_part">
                                        <li>
                                            <label for="che_0">
                                                <input type="checkbox" id="che_0" name="campus" value="공식" />
                                                <span></span>
                                                공식
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_1">
                                                <input type="checkbox" id="che_1" name="campus" value="강남" />
                                                <span></span>
                                                강남
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_2">
                                                <input type="checkbox" id="che_2" name="campus" value="강남 IT" />
                                                <span></span>
                                                강남 IT
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_3">
                                                <input type="checkbox" id="che_3" name="campus" value="종로" />
                                                <span></span>
                                                종로
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_4">
                                                <input type="checkbox" id="che_4" name="campus" value="신촌" />
                                                <span></span>
                                                신촌
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_5">
                                                <input type="checkbox" id="che_5" name="campus" value="노원" />
                                                <span></span>
                                                노원
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_6">
                                                <input type="checkbox" id="che_6" name="campus" value="상봉" />
                                                <span></span>
                                                상봉
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_7">
                                                <input type="checkbox" id="che_7" name="campus" value="송파" />
                                                <span></span>
                                                송파
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_8">
                                                <input type="checkbox" id="che_8" name="campus" value="강서" />
                                                <span></span>
                                                강서
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_9">
                                                <input type="checkbox" id="che_9" name="campus" value="화곡" />
                                                <span></span>
                                                화곡
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_10">
                                                <input type="checkbox" id="che_10" name="campus" value="신림" />
                                                <span></span>
                                                신림
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_11">
                                                <input type="checkbox" id="che_11" name="campus" value="신도림" />
                                                <span></span>
                                                신도림
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_12">
                                                <input type="checkbox" id="che_12" name="campus" value="인천" />
                                                <span></span>
                                                인천
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_13">
                                                <input type="checkbox" id="che_13" name="campus" value="안양" />
                                                <span></span>
                                                안양
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_14">
                                                <input type="checkbox" id="che_14" name="campus" value="의정부" />
                                                <span></span>
                                                의정부
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_15">
                                                <input type="checkbox" id="che_15" name="campus" value="구리" />
                                                <span></span>
                                                구리
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_16">
                                                <input type="checkbox" id="che_16" name="campus" value="일산" />
                                                <span></span>
                                                일산
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_17">
                                                <input type="checkbox" id="che_17" name="campus" value="안산" />
                                                <span></span>
                                                안산
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_18">
                                                <input type="checkbox" id="che_18" name="campus" value="성남 분당" />
                                                <span></span>
                                                성남 분당
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_19">
                                                <input type="checkbox" id="che_19" name="campus" value="성남 모란" />
                                                <span></span>
                                                성남 모란
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_20">
                                                <input type="checkbox" id="che_20" name="campus" value="수원" />
                                                <span></span>
                                                수원
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_21">
                                                <input type="checkbox" id="che_21" name="campus" value="김포" />
                                                <span></span>
                                                김포
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_22">
                                                <input type="checkbox" id="che_22" name="campus" value="하남미사" />
                                                <span></span>
                                                하남미사
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_23">
                                                <input type="checkbox" id="che_23" name="campus" value="천안" />
                                                <span></span>
                                                천안
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_24">
                                                <input type="checkbox" id="che_24" name="campus" value="전주" />
                                                <span></span>
                                                전주
                                            </label>
                                        </li>
                                        <li>
                                            <label for="che_25">
                                                <input type="checkbox" id="che_25" name="campus" value="이젠 IT" />
                                                <span></span>
                                                이젠 IT
                                            </label>
                                        </li>
                                    </ul>
                                </div>

                                <!-- 수신동의 -->
                                <div>
                                    <div class="sub_title">
                                        <h3>수신동의</h3>
                                        <div class="line"></div>
                                    </div>
                                    <div class="flex_part">
                                            <label for="receive_email" class="radio_part">
                                                <input type="radio" name="reception" id="receive_email" value="email" <% if ("email".equals(reception)) out.print("checked"); %>/>
                                                <span></span>
                                                이메일
                                            </label>
                                            <label for="sms" class="radio_part">
                                                <input type="radio" name="reception" id="sms" value="sms" <% if ("sms".equals(reception)) out.print("checked"); %>/>
                                                <span></span>
                                                SMS
                                            </label>
                                        </div>
                                    </div>
                                    
                                    
                                    <div class="guide">
                                        <p>
                                            - 본인인증에 대한 수신동의 및 무료수강쿠폰, 할인쿠폰, 이벤트 등의<br />
                                            정보 수신을 위한 동의입니다.(<span>회원가입 후, 내정보에서 수정가능</span>)
                                        </p>
                                    </div>
                                    
                                    <input type="submit" value="수정" />
                                    <input type="button" class="drop_user" onclick="location.href='DropAccCtrl?id=${id}'" value="탈퇴" />
                                </div>
                        </fieldset>
                    </form>
                </section>
            </main>
            <!-- /main -->
            <!-- footer -->
            <footer>
                <p class="copyright">Copyright by <span>EZEN.</span> All rights reserved.</p>
            </footer>
            <!-- /footer -->
        </div>
<script>
/* 체크박스 체크 */
var campuses = [<%= "\"" + String.join("\", \"", campuses) + "\"" %>];

window.onload = function() {
    var checkboxes = document.querySelectorAll('input[type="checkbox"]');
    
    checkboxes.forEach(function(checkbox) {
        if (campuses.includes(checkbox.value)) {
            checkbox.checked = true;
        }
    });
};
/* 성별 */
// 서버로부터 받은 값.
    var db_value = "<%=gender%>";

    var selectElement = document.querySelector("select");
    
    for(var i=0; i < selectElement.options.length; i++) {
        if(selectElement.options[i].value == db_value) {
            selectElement.selectedIndex = i;
            break;
        }
    }
</script>
</body>
</html>
