<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <!-- CSS -->
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/login.css">
    
      <!-- js -->
     <script src="./js/jquery-1.12.4.min.js"></script>
     <script src="./js/jquery-3.3.1.min.js"></script>

    <title>이젠아카데미</title>
</head>
<body>
    <div id="login_ezen">
        <!-- header -->
        <header>
            <a href="index.jsp"><h1>이젠아카데미</h1></a>
        </header>
        <!-- /header -->
        <!-- main -->
        <main>
            <section id="box">
                <form action="LoginCtrl" method="post" id="myForm">
                    <fieldset>
                        <div class="login_form">

                            <h2 class="login_title">MEMBER <strong>LOGIN</strong></h2>
                            <p class="login_sub_text">이젠아카데미컴퓨터학원에 오신것을 환영합니다.</p>

                            <div class="form-floating login_input">
                                <input type="text" class="form-control" name="id" id="floatingInput" placeholder="아이디<span>*</span>" autocomplete="off">
                                <label for="floatingInput">아이디 <span>*</span></label>
                            </div>

                            <div class="form-floating login_input">
                                <input type="password" class="form-control" name="password" id="floatingPassword" placeholder="비밀번호<span>*</span>">
                                <label for="floatingPassword">비밀번호 <span>*</span></label>
                            </div>

                            <div class="remember_id">
                                <input type="checkbox" name="remember_id" id="id_save">
                                <label for="id_save">
                                    아이디 저장
                                </label>
                            </div>

                            <div class="login_btn">
                                <input type="submit" value="로그인">
                            </div>

                            <div class="member_sign_info">
                                <ul>
                                    <li>
                                        <span>아직 회원이 아니세요?</span>
                                        <a href="join.jsp" class="jojn_btn">회원가입</a>
                                    </li>
                                    <li>
                                        <span>아이디·비밀번호를 잊으셨나요?</span>
                                        <a href="#" class="jojn_btn">ID/PW 찾기</a>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </fieldset>
                </form>
            </section>
        </main>
        <!-- /main -->
        <!-- footer -->
        <footer>
            <p class="copyright">
                Copyright by <span>EZEN.</span> All rights reserved.
            </p>
        </footer>
        <!-- /footer -->
        <script>
   //페이지가 로드되면 저장된 사용자 아이디를 로드한다.
   let userid = localStorage.getItem('floatingInput');
    if (userid !== null) {
        $('#floatingInput').val(userid);
        $('#id_save').prop('checked', true);
    }

    // 폼이 제출되면 'rememberMe' 체크박스가 체크되어 있으면 사용자 아이디를 저장한다.
    $('#myForm').on('submit', function(e) {
        e.preventDefault();

        let userid = $('#floatingInput').val();
        let password = $('#floatingPassword').val();

        // AJAX 요청을 사용하여 서버로 로그인 정보를 전송한다.
        $.ajax({
            type: 'POST',
            url: 'LoginCtrl', // 로그인 처리를 하는 서버의 URL
            data: {
               id: userid,
                password: password
            },
            success: function(response) {
                // 로그인이 성공하면 사용자 아이디를 저장하거나 제거한다.
                if ($('#id_save').prop('checked')) {
                    localStorage.setItem('floatingInput', userid);
                } else {
                    localStorage.removeItem('floatingInput');
                }
                window.location.href = 'index.jsp';
                // 로그인이 성공하면 다른 페이지로 이동하거나, 필요에 따라 다른 동작을 수행한다.
            },
            error: function(error) {
                alert("로그인을 실패하였습니다. 아이디 비밀번호를 확인해주세요.");
            }
        });
    });
</script>  
    </div>
</body>
</html>