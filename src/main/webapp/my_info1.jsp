<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
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
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/login.css">

    <title>이젠아카데미</title>
</head>
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
                <form action="PwcheckCtrl" method="post">
                <input type="hidden" name="id" value="${id }"/>
                    <fieldset>
                        <div class="login_form">

                            <h2 class="login_title">PASSWORD <strong> CHECK</strong></h2>
                            <p class="login_sub_text">
								안전한 회원님의 정보를 보호하기 위해 비밀번호를<br>
								다시 한 번 확인바랍니다.
								</p>


                            <div class="form-floating login_input">
                                <input type="password" class="form-control" name="password" id="floatingPassword" placeholder="비밀번호<span>*</span>">
                                <label for="floatingPassword">비밀번호 <span>*</span></label>
                            </div>


                            <div class="login_btn">
                                <input type="submit" value="비밀번호 확인">
                            </div>

                            <div class="member_sign_info">
                                <ul>
                                    <li>
                                        <span>비밀번호를 잊으셨나요?</span>
                                        <a href="#" class="jojn_btn">PW 찾기</a>
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
    </div>
</body>