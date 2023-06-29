<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
  <nav class="gnb">
      <ul>
          <a href="#">
              <img src="./images/main/icons/icon-location.png" alt="">
              <li class="public">공식</li>
          </a>
          <a href="#">
              <li>강남</li>
          </a>
          <a href="#">
              <li>강남 IT</li>
          </a>
          <a href="#">
              <li>종로</li>
          </a>
          <a href="#">
              <li>신촌</li>
          </a>
          <a href="#">
              <li>노원</li>
          </a>
          <a href="#">
              <li>상봉</li>
          </a>
          <a href="#">
              <li>송파</li>
          </a>
          <a href="#">
              <li>강서</li>
          </a>
          <a href="#">
              <li>화곡</li>
          </a>
          <a href="#">
              <li>신림</li>
          </a>
          <a href="#">
              <li>신도림</li>
          </a>
          <a href="#">
              <li>인천</li>
          </a>
          <a href="#">
              <li>안양</li>
          </a>
          <a href="#">
              <li>의정부</li>
          </a>
          <a href="#">
              <li>구리</li>
          </a>
          <a href="#">
              <li>일산</li>
          </a>
          <a href="#">
              <li>안산</li>
          </a>
          <a href="#">
              <li>성남 분당</li>
          </a>
          <a href="#">
              <li>성남 모란</li>
          </a>
          <a href="#">
              <li>수원</li>
          </a>
          <a href="#">
              <li>김포</li>
          </a>
          <a href="#">
              <li>하남미사</li>
          </a>
          <a href="#">
              <li>천안</li>
          </a>
          <a href="#">
              <li>전주</li>
          </a>
          <a href="#">
              <li>이젠 IT</li>
          </a>
      </ul>
  </nav>

  <div class="logo-box">
      <div class="containerBox">
          <div class="left-logo">
              <img src="./images/main/best-campus.png" alt="로고1">
          </div>
          <div class="center-logo">
              <a href="index.jsp">
                  <img src="./images/main/logo.png" alt="로고2">
              </a>
          </div>
          <div class="right-menu">
              <ul>
                  <a href="#">
                      <li>캠퍼스위치</li>
                  </a>
                  <a href="#">
                      <li>자격증소개</li>
                  </a>
                  <a href="BoardListCtrl">
                      <li>공지사항</li>
                  </a>
                  <a href="#" class="span">
                      <span>6</span>
                      <li>웹 개강일</li>
                  </a>
              </ul>
              <ul>
              <a href="#">
                  <li>교재</li>
              </a>
              <a href="#">
                  <li>온라인에듀</li>
              </a>
              
              <%
              	String id = (String)session.getAttribute("id");
              	if(id == null){
              %>
               <a href="join.jsp">
                   <img src="./images/main/icons/icon-sign.png" alt="내정보">
                   <li>회원가입</li>
               </a>
               <a href="login.jsp">
                   <img src="./images/main/icons/icon-login.png" alt="로그인">
                   <li>로그인</li>
               </a>
              <%
              	}else{
              		if(id.equals("admin")){
              %>
                 <a href="GetUserListCtrl">
                     <img src="./images/main/icons/icon-sign.png" alt="내정보">
                     <li>회원목록</li>
                 </a>
                 <%
                 		} else {
                 		%>
               	<a href="my_info1.jsp">
                   <img src="./images/main/icons/icon-sign.png" alt="내정보">
                   <li>내정보</li>
                 </a>
                 <%	
                 		}
           %>
          	<a href="LogoutCtrl">
                 <img src="./images/main/icons/icon-login.png" alt="로그아웃">
                 <li>로그아웃</li>
            	</a>
           <%
              	}
              %>
          </ul>
          </div>
      </div>
  </div>

  <nav id="nav">
                <div class="container-fluid">
                    <div class="dropdown-gnb">
                        <ul class="common-menu-list">
                            <li class="submenu">
                                <a href="#" class="submenuT">
                                    디지털콘텐츠 디자인
                                </a>
                                <div class="class-menu">
                                    <div class="class-menu-wrap">
                                        <h3>웹 UI/UX 콘텐츠 디자인</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">웹 UI/UX 콘텐츠 디자인</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">웹퍼블리셔 취업완성</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">웹 프론트엔드 퍼블리셔</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">UI/UX & React, node.js</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">영상을 활용한 UI/UX 디자인</a>
                                                </li>
                                                <li>
                                                    <span class="employment green">뉴딜</span>
                                                    <a href="#">[서울시 뉴딜] UX/UI 웹&모바일</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">UI/UX & React, node.js</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">UI/UX 피그마 React.js</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">웹 그래픽(포토, 일러)</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">웹표준(HTML5/CSS)</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">JavaScript&JQuery</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">UI/UX 디자인 (Adobe XD)</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">React 프론트엔드개발</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">웹 포트폴리오 완성</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">피그마 UI/UX 웹 & 앱 디자인</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">바닐라 자바스크립트</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="line"></div>
                                        <h3>시각·출판 콘텐츠 디자인</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">실업·취준생</span>
                                                    <a href="#">광고시각디자인</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">디자인 출판편집디자인</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">디지털 샤이니지 콘텐츠디자인</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">뉴미디어 광고편집디자인</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">디지털 이모티콘 제작 (카카오)</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">보태니컬 아트 (Botanical art)</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">색채학(color)</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">일러스트레이터 (Illustrator)</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">캘리그라피(손글씨)</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">포토샵(Photoshop)</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">Indesign(E-book)</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">미리캔버스 활용 SNS콘텐츠 제작</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">굿즈디자인(포토샵, 일러스트)</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="line"></div>
                                        <h3>멀티미디어 영상 콘텐츠 디자인</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">멀티미디어 영상 콘텐츠</a>
                                                </li>
                                                <li>
                                                    <span class="employment">실업·취준생</span>
                                                    <a href="#">유튜브 영상편집디자인</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">애니메이션 콘텐츠 디자인 </a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">Unity AR/VR 콘텐츠제작</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">프리미어 영상편집</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">유튜브 크리에이팅 영상편집 </a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">스마트폰을 이용한 생활영상제작</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">애프터이펙트 모션그래픽</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">시네마4D</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">Unity 3D</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="submenu">
                                <a href="#" class="submenuT">
                                    3D 설계·게임
                                </a>
                                <div class="class-menu">
                                    <div class="class-menu-wrap">
                                        <h3>BIM 건축 엔지니어링</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">3D환경 건축디자인</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">전산응용건축제도 과정평가형</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">스마트 BIM & 실내건축설계</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">Revit 건축설계</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">AutoCAD 건축설계</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">Sketch-up 3D 건축디자인</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="line"></div>
                                        <h3>실내건축 디자인 엔지니어링</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">국기·취준생 </span>
                                                    <a href="#">3D환경 실내건축 디자인</a>
                                                </li>
                                                <li>
                                                    <span class="employment">실업·취준생 </span>
                                                    <a href="#">실내건축 설계 디자인</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">실내건축제도 산업기사 과정평가형</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">3Ds MAX 실내건축 디자인</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">AutoCAD 실내건축설계</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">실내건축제도 & 스케치 </a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">Sketch-up 실내건축디자인</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="line"></div>
                                        <h3>기계설계 엔지니어링</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">실업·취준생 </span>
                                                    <a href="#">카티아(CATIA) 자동차설계</a>
                                                </li>
                                                <li>
                                                    <span class="employment">실업·취준생</span>
                                                    <a href="#">카티아기계설계 3D프린팅</a>
                                                </li>
                                                <li>
                                                    <span class="employment">실업·취준생 </span>
                                                    <a href="#">3D기계설계& 자동차설계(CATIA)</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">3D프린팅</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">카티아(CATIA) 엔지니어링</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="line"></div>
                                        <h3>게임 그래픽 디자인</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">국기·취준생 </span>
                                                    <a href="#">게임 그래픽 디자인</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">유니티(Unity3D) 게임프로그래밍</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">제페토 크리에이터 (메타버스)</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="submenu">
                                <a href="#" class="submenuT">
                                    데이터사이언스 (빅데이터)
                                </a>
                                <div class="class-menu">
                                    <div class="class-menu-wrap">
                                        <h3>빅데이터 분석(Analysis)</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">머신러닝 딥러닝 빅데이터분석</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">빅데이터 분석과 데이터마이닝</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">빅데이터분석 머신러닝 개발</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">파이썬 빅데이터 분석</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">빅데이터 웹UI기반 프로젝트 개발</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">파이썬 빅데이터</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">ADSP (빅데이터분석 준전문가)</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">R빅데이터 분석</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">파이썬 활용 금융데이터분석 실무</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">재무 빅데이터 분석 실무</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">태블로 활용 데이터 시각화</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="line"></div>
                                        <h3>빅데이터 개발(Engineering)</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">국기·취준생 </span>
                                                    <a href="#">AWS 활용 및 데이터 분석·시각화</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">파이썬 빅데이터 플랫폼 개발</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">빅데이터 시각화 개발</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">오라클 데이터베이스</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">파이썬 프로그래밍</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">빅데이터 분석기사</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">파이썬 빅데이터 (Pandas)</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#"> SQLD 개발자</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="line"></div>
                                        <h3>빅데이터 마케팅(Marketing)</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">실업·취준생 </span>
                                                    <a href="#">빅데이터기반 디지털마케팅</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">구글애널리틱스</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">Power BI 활용 빅데이터 시각화</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">빅데이터 디지털마케팅</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="submenu">
                                <a href="#" class="submenuT">
                                    ICT·정보기술
                                </a>
                                <div class="class-menu">
                                    <div class="class-menu-wrap">
                                        <h3>웹&앱 프로그래밍</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">안드로이드 앱 프로그래밍</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">풀스택 마스터 개발자</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">자바 웹&앱 프로그래밍</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">AWS 클라우드기반 자바 웹 개발자</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">자바 웹 정보처리 산업기사 과정평가</a>
                                                </li>
                                                <li>
                                                    <span class="employment">뉴딜</span>
                                                    <a href="#">큐레이팅 웹서비스 풀스택 개발</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">AWS 환경 데이터분석 풀스택</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">UI/UX & React, node.js</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">UI UX 피그마 React.js</a>
                                                </li>
                                                <li>
                                                    <span class="employment">실업·취준생 </span>
                                                    <a href="#">자바기반 큐레이팅 풀스택 개발</a>
                                                </li>
                                                <li>
                                                    <span class="employment green">뉴딜</span>
                                                    <a href="#">Java, Spring기반 풀스택 개발자</a>
                                                </li>
                                                <li>
                                                    <span class="employment">실업·취준생</span>
                                                    <a href="#">인공지능 풀스택 개발</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">자바프로그래밍</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">node.js 프론트엔드개발</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">Reactjs 프론트엔드개발</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">Vue.js 프론트엔드개발</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">C++ 기본</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">Tomcat WAS 개발</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">React Native 모바일 앱 개발</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="line"></div>
                                        <h3>인공지능&클라우드</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">국기·취준생 </span>
                                                    <a href="#">빅데이터 기반 AI 플랫폼 개발</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">정보보안실무</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">머신러닝 인공지능 개발</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">빅데이터 AI 인지식별 서비스 개발</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">이더리움 기초</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">클라우드 AWS 구축, 운영</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">텐서플로우 딥러닝 개발</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">케라스 활용 머신러닝 빅데이터분석</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="line"></div>
                                        <h3>K-디지털(IOT.ICT융합)</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">국기·취준생</span>
                                                    <a href="#">스마트팩토리 자동화 개발</a>
                                                </li>
                                                <li>
                                                    <span class="employment">국기·취준생 </span>
                                                    <a href="#">유튜브 영상편집디자인</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker green">K-디지털 </span>
                                                    <a href="#">큐레이팅 웹서비스 풀스택 개발</a>
                                                </li>
                                                <li>
                                                    <span class="worker green">K-디지털 </span>
                                                    <a href="#">AWS환경 데이터분석 풀스택</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="submenu">
                                <a href="#" class="submenuT">
                                    경영·마케팅 비즈니스
                                </a>
                                <div class="class-menu">
                                    <div class="class-menu-wrap">
                                        <h3>웹 UI/UX 콘텐츠 디자인</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">실업·취준생</span>
                                                    <a href="#">OA(office automation)</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">컴퓨터활용능력 1급</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">포토샵 인포그래픽 PPT</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">컴퓨터활용능력 2급</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">OA실무 (엑셀,파워포인트)</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">엑셀VBA(매크로) 업무자동화</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="line"></div>
                                        <h3>전산세무회계·경영</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">실업·취준생</span>
                                                    <a href="#">전산세무회계실무 (전산회계,세무)</a>
                                                </li>
                                                <li>
                                                    <span class="employment">실업·취준생 </span>
                                                    <a href="#">AT 전산세무회계</a>
                                                </li>
                                                <li>
                                                    <span class="employment">실업·취준생 </span>
                                                    <a href="#">RP정보관리사</a>
                                                </li>
                                                <li>
                                                    <span class="employment">실업·취준생 </span>
                                                    <a href="#">재경관리사</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">전산회계 1급</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">전산세무 1급</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">TAT 2급</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">전산세무 2급</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">FAT 1급</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">TAT 1급</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">ERP정보관리사 (회계 · 인사)</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">재무제표분석 및 기업분석</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">재경관리사 (재무·세무)
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="line"></div>
                                        <h3>디지털 마케팅</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">실업·취준생</span>
                                                    <a href="#">온라인,퍼포먼스 광고 마케팅(GA)</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">구글애널리틱스 디지털마케팅</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">디지털 SNS마케팅 </a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">네이버 스토어팜</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">Power BI 데이터 시각화분석</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">미리캔버스를 활용한 SNS콘텐츠</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">인포그래픽 마케팅</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="submenu">
                                <a href="#" class="submenuT">
                                    자격증
                                </a>
                                <div class="class-menu">
                                    <div class="class-menu-wrap">
                                        <h3>경영·회계 자격증</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">실업·취준생 </span>
                                                    <a href="#">재경관리사 자격증</a>
                                                </li>
                                                <li>
                                                    <span class="employment">실업·취준생 </span>
                                                    <a href="#">AT 전산세무회계 자격증</a>
                                                </li>
                                                <li>
                                                    <span class="employment">실업·취준생 </span>
                                                    <a href="#">전산세무회계실무 자격증</a>
                                                </li>
                                                <li>
                                                    <span class="employment">실업·취준생 </span>
                                                    <a href="#">ERP정보관리사</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">재경관리사 (재무·세무) 자격증</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">전산세무 2급 자격증</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">FAT 1급 자격증</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">TAT 2급 자격증</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="line"></div>
                                        <h3>OA 자격증</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">실업·취준생</span>
                                                    <a href="#">컴퓨터활용능력 자격증</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">컴퓨터활용능력 1급 자격증</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">ITQ</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">엑셀활용 데이터 가공과 분석실무</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">컴퓨터활용능력 2급 자격증</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">MS Power BI 활용 빅데이터</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="line"></div>
                                        <h3>데이터 사이언스 자격증</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">일반·직장인</span>
                                                    <a href="#">빅데이터분석기사</a>
                                                </li>
                                                <li>
                                                    <span class="employment">일반·직장인</span>
                                                    <a href="#">ADSP 빅데이터 준전문가</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">SQLD 자격증</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">정보처리 산업기사/기사</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="line"></div>
                                        <h3>디자인 자격증</h3>
                                        <div class="class-list-all">
                                            <ul class="job">
                                                <li>
                                                    <span class="employment">일반·직장인</span>
                                                    <a href="#">웹디자인기능사</a>
                                                </li>
                                                <li>
                                                    <span class="employment">일반·직장인</span>
                                                    <a href="#">컴퓨터그래픽스 운용기능사</a>
                                                </li>
                                            </ul>
                                            <ul class="career">
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">GTQ 일러스트</a>
                                                </li>
                                                <li>
                                                    <span class="worker">일반·직장인</span>
                                                    <a href="#">GTQ 포토샵</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="submenu">
                                <a href="#" class="submenuT">
                                    내일FLEX 0원
                                </a>
                            </li>
                            <li class="submenu">
                                <a href="#" class="submenuT">
                                    온라인상담
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>