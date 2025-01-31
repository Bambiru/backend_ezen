# backend_ezen

조별 자바 프로젝트 CRUD

#1. 개요

학습한  CRUD 기술을 활용하여 이젠아카데미학원 홈페이지를 구현하고자 한다.


#2. DB 구성

프로젝트명 : Ezen Project 
작업명 : 게시판, 로그인, 회원가입 기능 구현
회원 테이블명 : ezen_member
게시판 테이블명 : ezen_board


#3. 구성
![KakaoTalk_20230630_161548593](https://github.com/Bambiru/backend_ezen/assets/116716953/4111618a-3473-4113-a13e-59a0b2d850e2)

이 프로젝트는  Java Server Pages(JSP), Servlet, HTML, CSS, 그리고 JavaScript를 활용한 웹 기반 애플리케이션입니다. JSP와 Servlet은 백엔드에서, HTML/CSS와 JavaScript는 프론트엔드에서 각각 활용되어 이 웹 애플리케이션의 구조를 형성하고 있습니다.

1)   Java Server Pages(JSP): JSP는 HTML 코드에 Java 코드를 삽입하여 동적 웹 페이지를 생성하고 서버측 컴포넌트를 개발하는 데에 사용되었습니다. 이를 통해 사용자 요청에 따라 동적으로 변경되는 웹 페이지를 만들 수 있습니다.
2)   Servlet: Servlet은 클라이언트의 요청을 처리하고, 그에 따라 응답을 생성하는 데 사용되었습니다. 이러한 과정은 이 프로젝트에서 백엔드 로직을 구현하는 데 필수적인 컴포넌트로 작용하고 있습니다. 또한, 클라이언트 요청에 따라 데이터를 처리하고 JSP에 전달하여 동적 웹 페이지를 생성하는 역할을 수행합니다.
3)   HTML/CSS: HTML과 CSS를 사용하여 프론트엔드를 구성하였습니다. HTML은 웹 페이지의 구조를 정의하는데 사용되었고, CSS는 웹 페이지의 레이아웃, 색상, 글꼴 등 디자인 요소를 스타일링하는 데 사용되었습니다.
4)   JavaScript: avaScript는 웹 페이지에서 동적인 기능을 구현하는 데 사용되었습니다. 이를 통해 사용자와 웹 페이지 간의 상호작용을 가능하게 하며, 페이지 내의 요소를 동적으로 업데이트할 수 있습니다.


#4. Work-Flow
![KakaoTalk_20230630_161543107](https://github.com/Bambiru/backend_ezen/assets/116716953/48f00f8d-bad9-4bb5-a96e-6ae604f48641)

이 프로젝트는 기본적인 회원 관리 시스템과 게시판 기능을 중심으로 구성되어 있습니다. 사용자의 워크플로우는 아래와 같습니다.
1)   회원가입 :  사용자는 처음으로 시스템에 접근할 때 회원가입 프로세스를 거칩니다. 사용자는 필요한 개인 정보를 입력하고, 이 정보는 데이터베이스에 저장됩니다. 회원 가입이 완료되면 사용자는 자신의 계정으로 로그인할 수 있습니다.
2)   로그인:  로그인은 사용자가 시스템에 접근할 수 있는 권한을 부여받는 과정입니다. 사용자는 회원가입시 설정한 아이디와 비밀번호를 입력하여 로그인합니다.
3)   로그아웃:  사용자는 언제든지 시스템에서 로그아웃할 수 있습니다. 로그아웃하면 현재 세션이 종료되고, 다시 로그인해야 시스템을 이용할 수 있습니다.
4)   내 정보:  로그인한 사용자는 "내 정보" 섹션을 통해 개인 정보를 확인하고 수정할 수 있습니다. 사용자는 이메일, 아이디, 비밀번호 등의 정보를 업데이트 할 수 있습니다.
5)   글 작성:  로그인한 사용자는 게시판에서 새 글을 작성할 수 있습니다. 사용자는 제목과 내용을 입력하고, 이 글은 다른 사용자들이 볼 수 있도록 게시판에 게시됩니다.
6)   글 수정/삭제:  사용자는 자신이 작성한 글을 언제든지 수정하거나 삭제할 수 있습니다. 수정하려면 원하는 글을 찾아 수정 버튼을 눌러 변경 사항을 입력하고, 삭제하려면 삭제 버튼을 누릅니다.
7)   검색 기능: 게시판에서는 사용자가 특정 키워드를 기반으로 게시물을 검색할 수 있습니다. 이 기능은 사용자가 원하는 정보를 더 빠르게 찾는 데 도움을 줍니다.

이런 워크플로우는 사용자가 시스템을 쉽고 효과적으로 이용하도록 돕는 기본적인 프레임워크를 제공합니다. 이러한 각 단계는 사용자와 시스템 간의 상호작용을 최적화하고 사용자 경험을 향상시키는 데 중요한 역할을 합니다.

#5. 프로젝트 시연

게시판글쓰기

https://github.com/jihwan160/portfolio/assets/108442182/1accb867-630c-44a1-a1af-02b9a9913040


게시판분류별서치

https://github.com/jihwan160/portfolio/assets/108442182/fd96b6af-09ee-464c-9a08-6d7044e6e3e2

로그인확인_공지사항

https://github.com/jihwan160/portfolio/assets/108442182/37a01cfb-2620-40fa-8a9f-adce62ae010e

회원가입 1

https://github.com/jihwan160/portfolio/assets/108442182/711f226e-82b9-49ea-ba0a-b97dc32b36b4

회원가입 2

https://github.com/jihwan160/portfolio/assets/108442182/886a4f02-afe2-4cfd-b30d-b1c0918e946d

회원정보수정

https://github.com/jihwan160/portfolio/assets/108442182/9dabf37a-4dbb-4032-b4ea-4e3dd8d0a5c7

회원탈퇴

https://github.com/jihwan160/portfolio/assets/108442182/c927a107-ce51-4e76-8266-c3f51dcbfeaf

관리자

https://github.com/jihwan160/portfolio/assets/108442182/1dde22cb-4303-4382-8717-89ac93fc1669
