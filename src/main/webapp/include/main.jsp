<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한글
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
%>
      
        <!-- 팝업창 -->
        <p class="popup-container">
            <div id="popup" class="popup">
                <div class="popup-content">
                <input type="checkbox" name="tday-not" id="tday-not">오늘 그만보기
                <span class="close">&times;</span>
                </div>
            </div>
        </p>
        <!-- /팝업창 -->

        <main>
        <!-- 1. 스와이퍼 페이지 영역 -->
        <div id="section1">
            <!-- A. 스와이퍼 최상위 구조 클래스 -->
            <div class="swiper-container">
                <!-- B. 스와이퍼 될 Contents 부모 클래스 -->
                <div class="swiper-wrapper">
                    <!-- C-1. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide1">
                        <a href="#">
                            <div class="images">
                                <img src="./images/main/mainSlider1_txt1.png" class="firstImg" alt="온라인강의치트키">
                                <img src="./images/main/mainSlider1_txt2.png" class="secondImg" alt="꿀잼보장">
                            </div>
                            <div class="text">
                                <p class="notice">NOTICE</p>
                                <p class="textmessage">서울시 뉴딜일자리</p>
                                <div class="textImg">
                                    <p>처음Eazy?</p>
                                    <img src="./images/main/mainSliderMini_1.jpg" alt="미니">
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- /C-1. 스와이퍼 될 Slider 각각 내용들 -->

                    <!-- C-2. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide2">
                        <a href="#">
                            <div class="image1">
                                <img src="./images/main/mainSlider2_txt1.png" class="firstImg" alt="온라인강의치트키">
                            </div>
                            <div class="image2">
                                <img src="./images/main/mainSlider2_txt2.png" class="secondImg" alt="꿀잼보장">
                            </div>
                            <div class="text">
                                <p class="notice">IT programmer</p>
                                <p class="textmessage">My Destiny</p>
                                <div class="textImg">
                                    <p>개발자 과정</p>
                                    <img src="./images/main/mainSliderMini_2.jpg" alt="미니">
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- /C-2. 스와이퍼 될 Slider 각각 내용들 -->
                    
                    <!-- C-3. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide3">
                        <a href="#">
                            <div class="image1">
                                <img src="./images/main/mainSlider3_txt1.png" class="firstImg" alt="온라인강의치트키">
                            </div>
                            <div class="image2">
                                <img src="./images/main/mainSlider3_txt2.png" class="secondImg" alt="꿀잼보장">
                            </div>
                            <div class="text">
                                <p class="notice">GAME GRAPHIC DESIC</p>
                                <p class="textmessage">유니티(Unity3D)</p>
                                <div class="textImg">
                                    <p>MOU 체결</p>
                                    <img src="./images/main/mainSliderMini_3.jpg" alt="미니">
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- /C-3. 스와이퍼 될 Slider 각각 내용들 -->

                    <!-- C-4. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide4">
                        <a href="#">
                            <div class="image1">
                                <img src="./images/main/mainSlider4_txt1.png" class="firstImg" alt="온라인강의치트키">
                            </div>
                            <div class="image2">
                                <img src="./images/main/mainSlider4_txt2.png" class="secondImg" alt="꿀잼보장">
                            </div>
                            <div class="text">
                                <p class="notice">Newly published book</p>
                                <p class="textmessage">건축라이프</p>
                                <div class="textImg">
                                    <p>캐드교재출간</p>
                                    <img src="./images/main/mainSliderMini_4.jpg" alt="미니">
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- /C-4. 스와이퍼 될 Slider 각각 내용들 -->

                    <!-- C-5. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide5">
                        <a href="#">
                            <div class="image1">
                                <img src="./images/main/mainSlider5_txt1.png" class="firstImg" alt="온라인강의치트키">
                            </div>
                            <div class="image2">
                                <img src="./images/main/mainSlider5_txt2.png" class="secondImg" alt="꿀잼보장">
                            </div>
                            <div class="text">
                                <p class="notice">Multimedia content design</p>
                                <p class="textmessage">멀티미디어</p>
                                <div class="textImg">
                                    <p>콘텐츠 디자인</p>
                                    <img src="./images/main/mainSliderMini_4.jpg" alt="미니">
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- /C-5. 스와이퍼 될 Slider 각각 내용들 -->

                    <!-- C-6. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide6">
                        <a href="#">
                            <div class="image1">
                                <img src="./images/main/mainSlider6_txt1.png" class="firstImg" alt="온라인강의치트키">
                            </div>
                            <div class="image2">
                                <img src="./images/main/mainSlider6_txt2.png" class="secondImg" alt="꿀잼보장">
                            </div>
                            <div class="text">
                                <p class="notice">Mechanical Engineering</p>
                                <p class="textmessage">이젠 오리지날</p>
                                <div class="textImg">
                                    <p>카티아 강좌 콘텐츠</p>
                                    <img src="./images/main/mainSliderMini_6.jpg" alt="미니">
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- /C-6. 스와이퍼 될 Slider 각각 내용들 -->

                    <!-- C-7. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide7">
                        <a href="#">
                            <div class="image1">
                                <img src="./images/main/mainSlider7_txt1.png" class="firstImg" alt="온라인강의치트키">
                            </div>
                            <div class="image2">
                                <img src="./images/main/mainSlider7_txt2.png" class="secondImg" alt="꿀잼보장">
                            </div>
                            <div class="text">
                                <p class="notice">Online Inquiry</p>
                                <p class="textmessage">학습</p>
                                <div class="textImg">
                                    <p>Styling</p>
                                    <img src="./images/main/mainSliderMini_7.jpg" alt="미니">
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- /C-7. 스와이퍼 될 Slider 각각 내용들 -->

                    <!-- C-8. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide8">
                        <a href="#">
                            <div class="image1">
                                <img src="./images/main/mainSlider8_txt1.png" class="firstImg" alt="온라인강의치트키">
                            </div>
                            <div class="image2">
                                <img src="./images/main/mainSlider8_txt2.png" class="secondImg" alt="꿀잼보장">
                            </div>
                            <div class="text">
                                <p class="notice">Tomorrow Flex</p>
                                <p class="textmessage">온라인강의 치트키</p>
                                <div class="textImg">
                                    <p>내일FLEX 0원</p>
                                    <img src="./images/main/mainSliderMini_8.jpg" alt="미니">
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- /C-8. 스와이퍼 될 Slider 각각 내용들 -->

                </div>
                <!-- /B. 스와이퍼 될 Contents 부모 클래스 -->
                <!-- D. 스와이퍼 넘버링 클래스 -->
                <div class="swiper-pagination"></div>
                <!-- /D. 스와이퍼 넘버링 클래스 -->
                <!-- E. 스와이퍼 좌우 화살표 -->
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
                <!-- /E. 스와이퍼 좌우 화살표 -->
            </div>
            <!-- /A. 스와이퍼 최상위 구조 클래스 -->
        </div>
        <!-- /1. 스와이퍼 페이지 영역 -->

        <!-- 새로고침 효과 -->
        <div id="loading-overlay">
            <div class="loading-spinner"></div>
        </div>

        <!-- main_part2 -->
      <section id="main_part2" class="w1200">
        <!-- notice_campus_info_area -->
        <div class="notice_campus_info_area">
          <!-- notice -->
          <div class="notice">
            <h3>NOTICE</h3>
            <div class="swiper">
              
              <div class="swiper-wrapper">
                <div class="swiper-slide">
                  <a href="#" class="notice_link">
                    이젠아카데미, YBM & 다인리더스와 인재양성을 위한 MOU 체결
                  </a>
                </div>
                <div class="swiper-slide">
                  <a href="#" class="notice_link">
                    [서울시 뉴딜 처음Easy?] UX/UI 웹&모바일 디자인, JAVA, SPRING 기반 풀스택
                  </a>
                </div>
                <div class="swiper-slide">
                  <a href="#" class="notice_link">
                    드디어 찾았다! My Destiny~ AWS클라우드기반 자바 웹개발 과정
                  </a>
                </div>
                <div class="swiper-slide">
                  <a href="#" class="notice_link">
                    [이공계전문기술 연수생모집] 3D 기계설계&자동차설계(CATIA) 인력양성
                  </a>
                </div>
                <div class="swiper-slide">
                  <a href="#" class="notice_link">
                    [이공계전문기술 연수생모집] 자바기반 빅데이터 분석 큐레이팅 풀스택 개발
                  </a>
                </div>
              </div>
              <div class="swiper-scrollbar"></div>
            </div>
          </div> <!-- notice -->

          <!-- campus_number -->
          <div class="campus_number">
            <div class="current_campus">
              <dl>
                <dt>전국대표번호</dt>
                <dd><a href="#" class="current_campus_link">1544-8147</a></dd>
              </dl>
            </div>
          </div> <!-- campus_number -->

          <!-- campus_info -->
          <div class="campus_info">
            <ul class="list">
              <li>
                <a href="#" class="campus_info_icon active">
                  <i class="fa-solid fa-file-pen"></i>
                  <span>온라인상담</span>
                </a>
              </li>
              <li>
                <a href="#" class="campus_info_icon on">
                  <i class="fa-regular fa-address-card"></i>
                  <span>국비혜택조회</span>
                </a>
              </li>
              <li>
                <a href="#" class="campus_info_icon on">
                  <i class="fa-sharp fa-solid fa-e"></i>
                  <span>수강료조회</span>
                </a>
              </li>
              <li>
                <a href="#" class="campus_info_icon on">
                  <i class="fa-solid fa-calendar-days"></i>
                  <span>개강일조회</span>
                </a>
              </li>
            </ul>
          </div> <!-- campus_info -->

        </div> <!-- notice_campus_info_area -->
      </section> <!-- main_part2 -->


      <!-- main_part2-1 -->
      <section id="main_part2-1">
        <!-- portfolio_img_list -->
        <div class="portfolio_img_list">
          <div class="portfolio_img_list_contents w1200">
            <div class="part2-1_contents">
              <!-- pilc_header -->
              <div class="pilc_header">
                <h3>Portfolio</h3>
              </div> <!-- pilc_header -->
              
              <!-- pilc_view -->
              <div class="pilc_view">
                <div class="part2-1_control_box">
                  <div class="btn_left btn_slide_ani">

                      <div class="btn_inner">
                        <svg width="20" height="60" class="arrow_text">
                          <!-- x 50% y 50%  text-anchor="middle" 을 사용하면 텍스트가 중앙으로 오게된다-->
                          <text x="50%" y="50%" text-anchor="middle" dy=".3rem">PREV</text>
                        </svg>
                        <svg width="66" height="66" class="circle" xmlns="http://www.w3.org/2000/svg">
                          <circle cx="33" cy="33" r="20"></circle>
                        </svg>
                        <svg width="60" height="20" class="arrow">
                          <line x1="1" y1="10" x2="10" y2="0"></line>
                          <line x1="1" y1="10" x2="60" y2="10"></line>
                          <line x1="1" y1="10" x2="10" y2="20"></line>
                        </svg>
                      </div>

                  </div>
                  <div class="swiper-pagination">
                  </div>
                  <div class="btn_right btn_slide_ani">
      
                      <div class="btn_inner">
                        <svg width="20" height="60" class="arrow_text">
                          <!-- x 50% y 50%  text-anchor="middle" 을 사용하면 텍스트가 중앙으로 오게된다-->
                          <text x="50%" y="50%" text-anchor="middle" dy=".3rem">NEXT</text>
                        </svg>
                        <svg width="66" height="66" class="circle">
                          <circle cx="33" cy="33" r="20"></circle>
                        </svg>
                        <svg width="60" height="20" class="arrow">
                          <line x1="1" y1="10" x2="10" y2="0"></line>
                          <line x1="1" y1="10" x2="60" y2="10"></line>
                          <line x1="1" y1="10" x2="10" y2="20"></line>
                        </svg>
                      </div>
 
                  </div>
                </div>
                <div class="part2-1_port_view">
                  <!-- Slider main container -->
                  <div class="swiper">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper">
                      
                      <!-- 슬라이드 1 -->
                      <div class="swiper-slide">
                        <div class="slider_inner">
                          <img src="./images/main/portpolio/portpolio1.jpg" alt="포트폴리오 1">
                          <div class="short_name">
                            <span>디지털영상편집디자인</span>
                          </div>
                          <div class="short_name_2">
                            <span>디지털영상편집디자인</span>
                          </div>
                          <div class="detail_name">
                            <h4 class="title">
                              디지털영상  <br>
                              편집디자인  <br>
                              <small>(프리미어,에펙)</small> <br>
                              발표회
                            </h4>
                            <p class="text">
                              디지털영상 편집디자인  <br>
                              (프리미어,에펙)  <br>
                              수료를 축하드립니다.
                            </p>
                            <a href="#" class="round_border">
                              <p>자세히보기</p>
                              <span>바</span>
                              <span>로</span>
                              <span>가</span>
                              <span>기</span>
                              <span><i class="fa-solid fa-angle-right"></i></span>
                            </a>
                          </div>
                        </div>
                      </div> <!-- 슬라이드 1 -->

                      <!-- 슬라이드 2 -->
                      <div class="swiper-slide">
                        <div class="slider_inner">
                          <img src="./images/main/portpolio/portpolio2.jpg" alt="포트폴리오 2">
                          <div class="short_name">
                              <span>카티아(CATIA) 기계요소설계</span>
                          </div>
                          <div class="short_name_2">
                            <span>카티아(CATIA) 기계요소설계</span>
                          </div>
                          <div class="detail_name">
                            <h4 class="title">
                              카티아 (CATIA) <br>
                              기계요소설계  <br>
                              발표회
                            </h4>
                            <p class="text">
                              카티아  <br>
                              기계요소설계  <br>
                              수료를 축하드립니다.
                            </p>
                            <a href="#" class="round_border">
                              <p>자세히보기</p>
                              <span>바</span>
                              <span>로</span>
                              <span>가</span>
                              <span>기</span>
                              <span><i class="fa-solid fa-angle-right"></i></span>
                            </a>
                          </div>
                        </div>
                      </div>  <!-- 슬라이드 2 -->

                      <!-- 슬라이드 3 -->
                      <div class="swiper-slide">
                        <div class="slider_inner">
                          <img src="./images/main/portpolio/portpolio3.jpg" alt="포트폴리오 3">
                          <div class="short_name">
                              <span>OpenAPI_ 안드로이드 웹&앱 24기</span>
                          </div>
                          <div class="short_name_2">
                            <span>OpenAPI_ 안드로이드 웹&앱 24기</span>
                          </div>
                          <div class="detail_name">
                            <h4 class="title">
                              OpenAPI활용<br>
                              자바 안드로이드<br>
                              웹&앱 개발<br>
                              발표회&수료식
                            </h4>
                            <p class="text">
                              OpenAPI활용 자바<br>
                              안드로이드 웹&앱 개발<br>
                              과정 수료를 축하드립니다.
                            </p>
                            <a href="#" class="round_border">
                              <p>자세히보기</p>
                              <span>바</span>
                              <span>로</span>
                              <span>가</span>
                              <span>기</span>
                              <span><i class="fa-solid fa-angle-right"></i></span>
                            </a>
                          </div>
                        </div>
                      </div> <!-- 슬라이드 3 -->

                      <!-- 슬라이드 4 -->
                      <div class="swiper-slide">
                        <div class="slider_inner">
                          <img src="./images/main/portpolio/portpolio4.jpg" alt="포트폴리오 4">
                          <div class="short_name">
                            <span>자바활용 안드로이드앱 개발 12기</span>
                          </div>
                          <div class="short_name_2">
                            <span>자바활용 안드로이드앱 개발 12기</span>
                          </div>
                          <div class="detail_name">
                            <h4 class="title">
                              자바를 활용한<br>
                              안드로이드 앱개발<br>
                              발표회&수료식
                            </h4>
                            <p class="text">
                              자바를 활용한<br>
                              안드로이드 앱개발 과정<br>
                              수료를 축하드립니다.
                            </p>
                            <a href="#" class="round_border">
                              <p>자세히보기</p>
                              <span>바</span>
                              <span>로</span>
                              <span>가</span>
                              <span>기</span>
                              <span><i class="fa-solid fa-angle-right"></i></span>
                            </a>
                          </div>
                        </div>
                      </div> <!-- 슬라이드 4 -->

                      <!-- 슬라이드 5 -->
                      <div class="swiper-slide">
                        <div class="slider_inner">
                          <img src="./images/main/portpolio/portpolio5.jpg" alt="포트폴리오 5">
                          <div class="short_name">
                            <span>자바(JAVA) 웹&앱 개발 16기</span>
                          </div>
                          <div class="short_name_2">
                            <span>자바(JAVA) 웹&앱 개발 16기</span>
                          </div>
                          <div class="detail_name">
                            <h4 class="title">
                              자바(JAVA)<br>
                              웹&앱 개발<br>
                              발표회&수료식
                            </h4>
                            <p class="text">
                              자바(JAVA) 웹&앱 개발<br>
                              과정 수료를 축하드립니다.
                            </p>
                            <a href="#" class="round_border">
                              <p>자세히보기</p>
                              <span>바</span>
                              <span>로</span>
                              <span>가</span>
                              <span>기</span>
                              <span><i class="fa-solid fa-angle-right"></i></span>
                            </a>
                          </div>
                        </div>  
                      </div> <!-- 슬라이드 5 -->

                      <!-- 슬라이드 6 -->
                      <div class="swiper-slide">
                        <div class="slider_inner">
                          <img src="./images/main/portpolio/portpolio6.jpg" alt="포트폴리오 6">
                          <div class="short_name">
                            <span>카티아(CATIA)자동차 설계</span>
                          </div>
                          <div class="short_name_2">
                            <span>카티아(CATIA)자동차 설계</span>
                          </div>
                          <div class="detail_name">
                            <h4 class="title">
                              카티아(CATIA)자동차 설계 <br>
                              발표회&수료식
                            </h4>
                            <p class="text">
                              카티아 자동차설계 <br>
                              수료를 축하드립니다.
                            </p>
                            <a href="#" class="round_border">
                              <p>자세히보기</p>
                              <span>바</span>
                              <span>로</span>
                              <span>가</span>
                              <span>기</span>
                              <span><i class="fa-solid fa-angle-right"></i></span>
                            </a>
                          </div>
                        </div>
                      </div>
                    </div> <!-- 슬라이드 6 -->

                    <!-- If we need navigation buttons -->
                    <!-- <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div> -->

                    <!-- If we need scrollbar -->
                    <div class="swiper-scrollbar"></div>
                  </div>
                </div>
              </div> <!-- pilc_view -->
            </div>

            <!-- port_review_list_area -->
            <div id="port_review_list_area">
              <!-- port_review_list -->
              <div class="port_review_list">

                <div class="swiper">
                  <div class="swiper-wrapper">

                    <!-- swiper-slide -->
                    <div class="swiper-slide">
                      <ul class="w1200">
                        <!-- 후기 1-1 -->
                        <li>
                          <div class="item_content">
                            <div class="title">
                              <h4>BIM 건축엔지니어링 후기 </h4>
                              <small>이OO슬 수강생</small>
                            </div>
                            <div class="star_rating star_rating_1-1">
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-solid fa-star-half-stroke"></i>
                            </div>
                          </div>
                          <p class="text">
                            1. 초보자도 노력만 하면 쉽게 배울 수 있다.
                            2. 끝날때쯤 만족할만한 포트폴리오를 완성할 수 있다.
                            3. 실무에 필요한 팁들을 많이 배워갈 수 있다.
                            4. 카페를 통해 복습을 할 수 있다.
                            5. 상담자분이 취업상담을 매우 잘해주신다.
                            커리큘럼도 전체적으로 만족스러웠고 학원 분위기도 너무 딱딱하지 않고 좋았음. 직원들이 친절함.
                          </p>
                        </li> <!-- 후기 1-1 -->

                        <!-- 후기 1-2 -->
                        <li>
                          <div class="item_content">
                            <div class="title">
                              <h4>비전공자도 들을 수 있는 수업</h4>
                              <small>김O진 수강생</small>
                            </div>
                            <div class="star_rating star_rating_1-2">
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-regular fa-star"></i>
                              <!-- 4.0 -->
                            </div>
                          </div>
                          <p class="text">
                            제가 비전공자인데도 불구하고 선생님이 차근차근 잘 알려주셔서 수업을 잘 따라갈 수 있었어요~ 
                            처음이다 보니 두렵고 막막했는데, 강사님이 개념을 차근차근 알려주시니까 첨엔 어려웠지만 개념을 잡고 나니 프로그램 다루는게 재밌어졌고 내 집을 직접 짓는다는 느낌으로 설계하니까 더 재밌었어요.
                            그리고 실무에서 유의해야 할 사항 같은 필요한 내용들도 같이 알려주셔서 더욱 유익한 수업이었습니다~!
                          </p>
                        </li> <!-- 후기 1-2 -->

                        <!-- 후기 1-3 -->
                        <li>
                          <div class="item_content">
                            <div class="title">
                              <h4>최고입니다~!</h4>
                              <small>김O주 수강생</small>
                            </div>
                            <div class="star_rating star_rating_1-3">
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-solid fa-star-half-stroke"></i>
                            </div>
                          </div>
                          <p class="text">
                            선생님께서 한 명 한 명 놓치지 않고 봐주시는 모습이 좋았습니다.
                            잘해야한다는 생각에 긴장하고 제대로 하지 못할 때 마음에 안정을 주시고,
                            또 제 실력을 더 좋게 끌어올려주셔서 정말 좋았습니다 최고!!!
                          </p>
                        </li> <!-- 후기 1-3 -->

                    </ul> 

                    </div> <!-- swiper-slide -->

                    <div class="swiper-slide">
                      <ul class="w1200">
                        <!-- 후기 2-1 -->
                        <li>
                          <div class="item_content">
                            <div class="title">
                              <h4>수업잘들었습니다! </h4>
                              <small>이oo 수강생</small>
                            </div>
                            <div class="star_rating star_rating_2-1">
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-solid fa-star-half-stroke"></i>
                              <i class="fa-sharp fa-regular fa-star"></i>
                            </div>
                          </div>
                          <p class="text">
                            기초는 물론 실무에서 활용되는 부분들을 많이 알려주셔서 도움이 많이 되었고, 
                            세심하게 알려주시고 항상 예쁜 미소로 수강생들을 대해주시는 모습이 저까지 기분 좋게 만들어 주신 것 같습니다.
                            수업이 빨리 끝나 아쉬웠던 정도로 만족스러운 수업이였어요~~!! 너무 잘 배우고 갑니다!
                            어서 취업에 성공하고 싶어요!! 화이팅 입니다.
                          </p>
                        </li> <!-- 후기 2-1 -->

                        <!-- 후기 2-2 -->
                        <li>
                          <div class="item_content">
                            <div class="title">
                              <h4>뿌듯하고 만족함!</h4>
                              <small>조oo 수강생</small>
                            </div>
                            <div class="star_rating star_rating_2-2">
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-solid fa-star-half-stroke"></i>
                              <i class="fa-sharp fa-regular fa-star"></i>
                            </div>
                          </div>
                          <p class="text">
                            사전지식 없이 수강해서 수업을 따라갈 수 있을지,
                            제대로 된 결과물을 낼 수 있을지 걱정을 많이 했었는데 강사님 덕분에 편안하게 강의를 들을수 있었고,
                            학원 내부시설도 깨끗하고 아주 만족스럽게 듣고 갑니다^^ 
                            수업을 듣고나서 혼자 공부해보니깐 이제야 툴들이 이해가가고 기본기를 장착하게되어 작업하는데 수월해졌어요! 감사합니다.
                            전문가 수준은 아니지만 어느정도 이해하고 따라갈 정도에 실력이 된 것 같아서 뿌듯합니다^^
                          </p>
                        </li> <!-- 후기 2-2 -->

                        <!-- 후기 2-3 -->
                        <li>
                          <div class="item_content">
                            <div class="title">
                              <h4>포폴 완성했어요!!</h4>
                              <small>배oo 수강생</small>
                            </div>
                            <div class="star_rating star_rating_2-3">
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-solid fa-star-half-stroke"></i>
                            </div>
                          </div>
                          <p class="text">
                            강사님의 실무에서 사용할 수 있는 예시들을 알아 듣기 쉽게 잘 알려주시고, 
                            포폴을 준비하면서 힘들었는데 포기하지 않게 잘 이끌어주셔서 좋았습니다. 
                            하면할수록 웹사이트를 이렇게 만드는 구나 하면서 이해할 수 있었고, 더 많은 것을 작업해보고 싶은 생각이 마구마구 들었답니다. 
                            너무 감사해요 ㅋㅋㅋㅋ 앞으로도 많이 번창하세요~
                          </p>
                        </li> <!-- 후기 2-3 -->

                      </ul> 
                    </div>

                    <div class="swiper-slide">
                      <ul class="w1200">
                        <!-- 후기 3-1 -->
                        <li>
                          <div class="item_content">
                            <div class="title">
                              <h4>실무 위주의 커리큘럼</h4>
                              <small>강OO 수강생</small>
                            </div>
                            <div class="star_rating star_rating_3-1">
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-solid fa-star-half-stroke"></i>
                            </div>
                          </div>
                          <p class="text">  
                            기대한것보다 200% 만족하면서 많은 질문에 대해서 답변도 친절하고 시원하게 잘 해주셔서 매우 좋았습니다. 
                            (실제로 자동차 현업기준으로 가르치는곳이 없는곳으로 알고 있습니다.) 
                            이후 지인들에게도 적극적으로 수업에 대해서 추천하고 있으며, 수업때 들은 내용을 평생 활용하며 간직하겠습니다.
                            감사합니다.
                          </p>
                        </li> <!-- 후기 3-1 -->

                        <!-- 후기 3-2 -->
                        <li>
                          <div class="item_content">
                            <div class="title">
                              <h4>정말 감사합니다</h4>
                              <small>이OO 수강생</small>
                            </div>
                            <div class="star_rating star_rating_3-2">
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-regular fa-star"></i>
                            </div>
                          </div>
                          <p class="text">  
                            일단 취업에 대한 자신감을 얻고 갑니다. 
                            내가 배우는 프로그램에 대한 자부심도 생기고 애정도 생겼습니다. 
                            그리고 현직에서의 경험들을 말씀해주시고 실제 사용하고있는 용어나 현업에서 무엇을 중요 시 여기는 지 말씀해 주셔서 너무 좋았습니다. 
                            그리고 상담선생님께서 학생수가 많은 가운데에도 너무 자세히 첨삭을 해주셔서 감사했습니다
                          </p>
                        </li> <!-- 후기 3-2 -->

                        <!-- 후기 3-3 -->
                        <li>
                          <div class="item_content">
                            <div class="title">
                              <h4>비전공자도 충분히 들을 수 있는 교육!</h4>
                              <small>민OO 수강생</small>
                            </div>
                            <div class="star_rating star_rating_3-3">
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                            </div>
                          </div>
                          <p class="text">  
                            전공자 비전공자를 떠나서 배우고 익숙해지는데 차이가 날 수 있다. 
                            하지만 그 차이는 카티아를 누가 더 잘한다 못한다의 기준이 되진 않으니까 절대 비전공자라고 해서 기죽지말고 강사님하는대로 잘 따라오면 다른 사람보다 잘할 수 있다는 생각이 든다. 
                            그리고 모르는 것이 있으면 강사님께 꼭! 꼭! 물어보고 자기 것으로 만들어야 한다.
                            TIP. 혼자 전전긍긍하지말고 꼭 다른 친구들과 비교와 분석을 해야한다.(모든인원과 다 친하게 지내는게 좋습니다.)
                          </p>
                        </li> <!-- 후기 3-3 -->


                      </ul>
                    </div>

                    <div class="swiper-slide">
                      <ul class="w1200">
                        <!-- 후기 4-1 -->
                        <li>
                          <div class="item_content">
                            <div class="title">
                              <h4>출판편집디자인</h4>
                              <small>허OO 수강생</small>
                            </div>
                            <div class="star_rating star_rating_4-1">
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-solid fa-star-half-stro1ke"></i>
                            </div>
                          </div>
                          <p class="text">  
                            저는 비전공자인데요 이 강의 듣고 포트폴리오 완성했어요 
                            솔직히 너무 자신도 없었고 힘들줄 알았는데 생각보다 강사님도 잘 봐주시고 모르는거 잘 알려주셔서 너무 좋았습니다.
                          </p>
                        </li> <!-- 후기 4-1 -->

                        <!-- 후기 4-2 -->
                        <li>
                          <div class="item_content">
                            <div class="title">
                              <h4>비전공자에게도 강추하는 강의:D</h4>
                              <small>오OO 수강생</small>
                            </div>
                            <div class="star_rating star_rating_4-2">
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-regular fa-star"></i>
                            </div>
                          </div>
                          <p class="text">  
                            취업에 도움이 될 것 같아서 시작했던 편집디자인, 
                            비전공자이고 포토샵, 일러스트 프로그램도 처음 사용하게 되었는데 선생님께서 설명을 해주실 때 용어들을 쉽게 설명해주시려고 노력하시고, 
                            칭찬도 아끼지 않고 해주셔서 제가 더 열정적으로 강의를 듣게되었습니다. 
                            일러스트나 포토샵에서 그림 그리는게 많이 어색하고 어려웠는데 복습도 많이하다보니 실력이 점점 늘어서 좋았고, 
                            작업하는데 시간도 단축되니 자신감이 뿜뿜!!
                          </p>
                        </li> <!-- 후기 4-2 -->

                        <!-- 후기 4-3 -->
                        <li>
                          <div class="item_content">
                            <div class="title">
                              <h4>부족했던 부분을 채워줬던 강의! 적극 추천하쟈나요~ㅎ</h4>
                              <small>이OO 수강생</small>
                            </div>
                            <div class="star_rating star_rating_4-3">
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-solid fa-star-half-stro1ke"></i>
                            </div>
                          </div>
                          <p class="text">  
                            선생님께서 디자인을 너무 꼼꼼하게 봐주셔서 혼자 작업할 때보다 수월하게 작업할 수 있었어요! 
                            덩달아 부족했던 디자인 안목까지 높아진 거 있죠?? 와 진짜 대박이예요~!! ㅎㅎ 
                            앞으로도 더 열심히 해야겠지만 이젠에서 강의들으며 포폴 만들어서 너무 행복했어요
                            이젠컴퓨터학원도 더 번창하세요~ ㅎㅎ
                          </p>
                        </li> <!-- 후기 4-3 -->


                      </ul>
                    </div>

                    <div class="swiper-slide">
                      <ul class="w1200">
                        <!-- 후기 5-1 -->
                        <li>
                          <div class="item_content">
                            <div class="title">
                              <h4>실무를 토대로 좋은 강의를 들음.</h4>
                              <small>이oo 수강생</small>
                            </div>
                            <div class="star_rating star_rating_5-1">
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                            </div>
                          </div>
                          <p class="text">  
                            무엇보다 커리큘럼이 맘에 들었구요, 
                            모르는 부분들 잘 알려주셔서 너무 감사합니다~! 실무에서 쓸 수 있는 기능들을 많이 작업해 볼 수 있는 좋은 기회였어요!
                            좋은 곳으로 취업할 수 있을 것 같아요! 많은 수강생들이 이 과정을 듣고 개발자로 성장했으면 좋겠네요!
                          </p>
                        </li> <!-- 후기 5-1 -->

                        <!-- 후기 5-2 -->
                        <li>
                          <div class="item_content">
                            <div class="title">
                              <h4>초보자도 비전공자도 개발자 가능합니다!!!!</h4>
                              <small>김oo 수강생</small>
                            </div>
                            <div class="star_rating star_rating_5-2">
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-regular fa-star"></i>
                            </div>
                          </div>
                          <p class="text">  
                            저 정말 초보자이면서 비전공자거든요,, 
                            개발자 되고 싶어서 강의 듣게 되었는데 강사님! 너무 꼼꼼하게 알려주십니다
                            배울 것도 많아서 다는 아니지만 실무에서 쓸 수 있는 정도는 배워가는 것 같아요!
                            굳굳 좋습니다!!!!!!!!
                          </p>
                        </li> <!-- 후기 5-2 -->

                        <!-- 후기 5-3 -->
                        <li>
                          <div class="item_content">
                            <div class="title">
                              <h4>저도 이제 개발자로 취업했습니다!!</h4>
                              <small>김oo 수강생</small>
                            </div>
                            <div class="star_rating star_rating_5-3">
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-regular fa-star"></i>
                            </div>
                          </div>
                          <p class="text">  
                            저는 이 과정을 듣고 프로젝트 작업을 하면서 평소 여러 쇼핑몰들을 이용하면서 부족한 것이 있었으면 하는 기능들을 생각하여 구현을 할 수 있었습니다. 
                            너무 어렵게만 느껴졌던 부분들을 기초부터 여러 기능들을 만들어보고 제일 중요한 취업에 필요한 포트폴리오를 완성할 수 있는 강의였습니다.
                          </p>
                        </li> <!-- 후기 5-3 -->


                      </ul>
                    </div>

                    <div class="swiper-slide">
                      <ul class="w1200">
                        <!-- 후기 6-1 -->
                        <li>
                          <div class="item_content">
                            <div class="title">
                              <h4>코딩 고수가 되는 방법</h4>
                              <small>김O찬 수강생</small>
                            </div>
                            <div class="star_rating star_rating_6-1">
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                            </div>
                          </div>
                          <p class="text">  
                            웹디자인 과정을 배울 학원을 찾다가 이곳에서 수강을 하게 되었습니다! 
                            기본적인 html,css 를 배우고 난 뒤에 자바스크립트,제이쿼리까지 배우게 되었습니다^^ 
                            강사님 덕분에 기본적인 웹 사이트 제작 방법 및 코딩언어에 대한 것을 많이 배우게 되었으며 정말 많은 도움이 될 것 같습니다 !
                            나중에 또 기회가 있다면 다른 과정 수강하도록 할게요 감사해요~
                          </p>
                        </li> <!-- 후기 6-1 -->

                        <!-- 후기 6-2 -->
                        <li>
                          <div class="item_content">
                            <div class="title">
                              <h4>너무 만족했던 수업입니다!</h4>
                              <small>박O진 수강생</small>
                            </div>
                            <div class="star_rating star_rating_6-2">
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-regular fa-star"></i>
                            </div>
                          </div>
                          <p class="text">  
                            처음에 아무것도 몰랐던 제가 직접 사이트를 만들 수 있게 되어 너무 감사합니다!! 
                            제가 질문이 너무많아서 많이 힘드셨을텐데 강사님 너무감사하고 직원분들도 친절해서 좋았습니다!! 
                            나중에 또 학원다니게되면 꼭 이젠으로 신청할게요 ^^
                          </p>
                        </li> <!-- 후기 6-2 -->

                        <!-- 후기 6-3 -->
                        <li>
                          <div class="item_content">
                            <div class="title">
                              <h4>실무에 도움되는 수업!</h4>
                              <small>김O은 수강생</small>
                            </div>
                            <div class="star_rating star_rating_6-3">
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-solid fa-star"></i>
                              <i class="fa-sharp fa-regular fa-star"></i>
                            </div>
                          </div>
                          <p class="text">  
                            강사님께서 학생 한 명 한 명에게 관심을 가져주시고 모두를 이끌어 주시는 모습에 더 열심히 공부하게 되었습니다. 
                            실무에서 유용하게 쓰이는 기술들도 많이 알려주셔서 업무 상황에서 정말 유용하게 쓸 수 있을 것 같습니다. 
                            좋은 수업을 진행해 주신 강사님께 다시 한번 감사드립니다!
                          </p>
                        </li> <!-- 후기 6-3 -->

                      </ul>
                    </div>

                  </div> 
                  <div class="swiper-scrollbar"></div>
                </div>


              </div><!-- port_review_list -->
            </div> <!-- port_review_list_area -->

          </div>
        </div> <!-- portfolio_img_list -->
        <div>

        </div> 
      </section> <!-- main_part2-1 -->

      <!-- main_part3 -->
      <section id="part3">
        <!-- portfolio_img_list -->
        <div class="portfolio_img_list">
            <div class="portfolio_img_list_contents">
                <div class="part2-1_contents">
                    <!-- pilc_header -->
                    <div class="pilc_header">
                        <h3>Hot Lecture</h3>
                    </div>
                    <!-- pilc_header -->

                    <div class="part3_title">
                        <h2>웹 UI/UX 콘텐츠 디자인</h2>
                        <p>간단한 아이콘부터, 인터페이스 디자인은 물론 모바일 웹사이트 디자인까지!<br>
                           최신 트렌드와 사용자의 요구사항에 맞춘 실용적인 디자인으로 웹디자인의 완성도를 높이는 과정</p>
                    </div>


                    <!-- pilc_view -->
                    <div class="pilc_view">
                        <div class="part2-1_control_box">
                            <div class="btn_left btn_slide_ani">
           
                                    <div class="btn_inner">
                                        <svg width="20" height="60" class="arrow_text">
                                        <!-- x 50% y 50%  text-anchor="middle" 을 사용하면 텍스트가 중앙으로 오게된다-->
                                            <text x="50%" y="50%" text-anchor="middle" dy=".3rem">PREV</text>
                                        </svg>
                                        <svg width="66" height="66" class="circle" xmlns="http://www.w3.org/2000/svg">
                                            <circle cx="33" cy="33" r="20"></circle>
                                        </svg>
                                        <svg width="60" height="20" class="arrow">
                                            <line x1="1" y1="10" x2="10" y2="0"></line>
                                            <line x1="1" y1="10" x2="60" y2="10"></line>
                                            <line x1="1" y1="10" x2="10" y2="20"></line>
                                        </svg>
                                    </div>
      
                            </div>
                            <div class="swiper-pagination">
                            </div>
                            <div class="btn_right btn_slide_ani">
        
                                    <div class="btn_inner">
                                        <svg width="20" height="60" class="arrow_text">
                                        <!-- x 50% y 50%  text-anchor="middle" 을 사용하면 텍스트가 중앙으로 오게된다-->
                                            <text x="50%" y="50%" text-anchor="middle" dy=".3rem">NEXT</text>
                                        </svg>
                                        <svg width="66" height="66" class="circle">
                                            <circle cx="33" cy="33" r="20"></circle>
                                        </svg>
                                        <svg width="60" height="20" class="arrow">
                                            <line x1="1" y1="10" x2="10" y2="0"></line>
                                            <line x1="1" y1="10" x2="60" y2="10"></line>
                                            <line x1="1" y1="10" x2="10" y2="20"></line>
                                        </svg>
                                    </div>
      
                            </div>
                        </div>
                        <div class="part2-1_port_view">
                        <!-- Slider main container -->
                            <div class="part3_swiper">
                            <!-- Additional required wrapper -->
                                <div class="swiper-wrapper">
                                    <!-- Slides -->
                                    <div class="swiper-slide">
                                        <img src="./images/main/community/curriculum/img1.jpg" alt="">
                                        <div class="hot_text">
                                            <p class="hot_title">
                                                웹 UI/UX 콘텐츠<br>
                                                디자인
                                            </p>
                                            <div class="hot_online_link">
                                                <div class="hot_details">
                                                    상세보기
                                                    <i class="fa-solid fa-angle-right"></i>
                                                </div>
                                                <div class="hot_consulting">
                                                    온라인상담
                                                    <i class="fa-solid fa-angle-right"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="./images/main/community/curriculum/img2.jpg" alt="">
                                        <div class="hot_text">
                                            <p class="hot_title">
                                                멀티미디어<br>
                                                영상콘텐츠
                                            </p>
                                            <div class="hot_online_link">
                                                <div class="hot_details">
                                                    <a href="">
                                                        상세보기
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                                <div class="hot_consulting">
                                                    <a href="">
                                                    온라인상담
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="./images/main/community/curriculum/img3.png" alt="">
                                        <div class="hot_text">
                                            <p class="hot_title">
                                                카티아(CATIA)<br>
                                                자동차설계
                                            </p>
                                            <div class="hot_online_link">
                                                <div class="hot_details">
                                                    <a href="">
                                                        상세보기
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                                <div class="hot_consulting">
                                                    <a href="">
                                                    온라인상담
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="./images/main/community/curriculum/img4.jpg" alt="">
                                        <div class="hot_text">
                                            <p class="hot_title">
                                                UI/UX 디자인<br>
                                                (Adobe XD)
                                            </p>
                                            <div class="hot_online_link">
                                                <div class="hot_details">
                                                    <a href="">
                                                        상세보기
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                                <div class="hot_consulting">
                                                    <a href="">
                                                    온라인상담
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="./images/main/community/curriculum/img5.jpg" alt="">
                                        <div class="hot_text">
                                            <p class="hot_title">
                                                3D환경 실내건축<br>
                                                디자인
                                            </p>
                                            <div class="hot_online_link">
                                                <div class="hot_details">
                                                    <a href="">
                                                        상세보기
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                                <div class="hot_consulting">
                                                    <a href="">
                                                    온라인상담
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="./images/main/community/curriculum/img6.jpg" alt="">
                                        <div class="hot_text">
                                            <p class="hot_title">
                                                전산세무회계실무<br>
                                                (전산회계,세무)
                                            </p>
                                            <div class="hot_online_link">
                                                <div class="hot_details">
                                                    <a href="">
                                                        상세보기
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                                <div class="hot_consulting">
                                                    <a href="">
                                                    온라인상담
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="./images/main/community/curriculum/img7.png" alt="">
                                        <div class="hot_text">
                                            <p class="hot_title">
                                                구글애널리틱스<br>
                                                디지털마케팅
                                            </p>
                                            <div class="hot_online_link">
                                                <div class="hot_details">
                                                    <a href="">
                                                        상세보기
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                                <div class="hot_consulting">
                                                    <a href="">
                                                    온라인상담
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="./images/main/community/curriculum/img8.jpg" alt="">
                                        <div class="hot_text">
                                            <p class="hot_title">
                                                SQLD 개발자
                                            </p>
                                            <div class="hot_online_link">
                                                <div class="hot_details">
                                                    <a href="">
                                                        상세보기
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                                <div class="hot_consulting">
                                                    <a href="">
                                                    온라인상담
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="./images/main/community/curriculum/img9.jpg" alt="">
                                        <div class="hot_text">
                                            <p class="hot_title">
                                                React.js<br>
                                                프론트엔드개발
                                            </p>
                                            <div class="hot_online_link">
                                                <div class="hot_details">
                                                    <a href="">
                                                        상세보기
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                                <div class="hot_consulting">
                                                    <a href="">
                                                    온라인상담
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="./images/main/community/curriculum/img10.jpg" alt="">
                                        <div class="hot_text">
                                            <p class="hot_title">
                                                node.js<br>
                                                프론트엔드개발
                                            </p>
                                            <div class="hot_online_link">
                                                <div class="hot_details">
                                                    <a href="">
                                                        상세보기
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                                <div class="hot_consulting">
                                                    <a href="">
                                                    온라인상담
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="./images/main/community/curriculum/img11.jpg" alt="">
                                        <div class="hot_text">
                                            <p class="hot_title">
                                                빅데이터 분석과<br>
                                                데이터마이닝
                                            </p>
                                            <div class="hot_online_link">
                                                <div class="hot_details">
                                                    <a href="">
                                                        상세보기
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                                <div class="hot_consulting">
                                                    <a href="">
                                                    온라인상담
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- If we need pagination -->
                            </div>

                        </div>
                    </div>
                <!-- pilc_view -->
                </div>
            </div>
        </div> 
      </section> <!-- main_part3 -->

      <!-- main_part4 -->
      <section id="main_part4">
        <!-- part4_area -->
        <div class="part4_area">
          <!-- part4_container -->
          <div class="part4_container w1200">
            <div class="header">
              <h3>수강생 랜선 인터뷰</h3>
            </div>

            <!-- interview_list -->
            <ul class="interview_list">

              <!-- interview_list_item 1 -->
              <li class="interview_list_item">
                <a href="#">
                  <div class="img_box img_box_1">
                    <div class="img_bg img_bg_1"></div>
                    <span>#포폴완성 #취업성공</span>
                  </div>
                  <div class="text_box">
									'우아'한 순간 찾아온 기회 <br>
                  <strong>웹 UI/UX 콘텐츠 디자인</strong>
                  서O운 수강생
                  </div>
                </a>
              </li> <!-- interview_list_item 1 -->

              <!-- interview_list_item 2 -->
              <li class="interview_list_item">
                <a href="#">
                  <div class="img_box img_box_2">
                    <div class="img_bg img_bg_2"></div>
                    <span>#직업찾기 성공</span>
                  </div>
                  <div class="text_box">
									이젠에서 찾은 역전의 기회 <br>
                  <strong>메카닉 아키텍쳐 엔지니어링</strong>
                  김O규 수강생
                  </div>
                </a>
              </li> <!-- interview_list_item 2 -->

              <!-- interview_list_item 3 -->
              <li class="interview_list_item">
                <a href="#">
                  <div class="img_box img_box_3">
                    <div class="img_bg img_bg_3"></div>
                    <span>#개발 '찐' 강의</span>
                  </div>
                  <div class="text_box">
									‘찐’강의 개발의 트렌드를 익혔어요. <br>
                  <strong>ICT· 정보기술</strong>
                  신O훈 수강생
                  </div>
                </a>
              </li> <!-- interview_list_item 3 -->

              <!-- interview_list_item 4 -->
              <li class="interview_list_item">
                <a href="#">
                  <div class="img_box img_box_4">
                    <div class="img_bg img_bg_4"></div>
                    <span>#신세계! 건축설계!</span>
                  </div>
                  <div class="text_box">
									Talk쏘는 나만의 스킬 노하우 <br>
                  <strong>보태니컬 아트</strong>
                  윤O희 수강생
                  </div>
                </a>
              </li> <!-- interview_list_item 4 -->

            </ul> <!-- interview_list -->

            <!-- employment_list -->
            <ul class="employment_list">

              <!-- employment_list_item 1-->
              <li class="employment_list_item">
                <img src="./images/main/interview/starbucks.jpg" alt="스타벅스이미지">
                <div class="text_box">
                  <p>
                    자바프로그래밍, 프론트엔드<br>
                    & 백엔드 개발과정 수료
                    <strong>웹개발 취업 우O희</strong>
                  </p>
                </div>
              </li> <!-- employment_list_item 1 -->

              <!-- employment_list_item 2-->
              <li class="employment_list_item">
                <img src="./images/main/interview/wemakeprice.jpg" alt="위메프이미지">
                <div class="text_box">
                  <p>
                    웹표준 HTML5/CSS3/Jquery<br>
                    프론트엔드 개발과정 수료 
                    <strong>프론트엔드 개발 취업 김O비</strong>
                  </p>
                </div>
              </li> <!-- employment_list_item 2 -->

              <!-- employment_list_item 3-->
              <li class="employment_list_item">
                <img src="./images/main/interview/monami.jpg" alt="모나미이미지">
                <div class="text_box">
                  <p>
                    [NCS]출판편집디자인<br>
									(광고,시각디자인) 수료
                    <strong>편집디자인 취업 이O혜</strong>
                  </p>
                </div>
              </li> <!-- employment_list_item 3 -->

            </ul> <!-- employment_list -->

          </div> <!-- part4_container -->
        </div> <!-- part4_area -->
      </section> <!-- main_part4 -->

      <!-- main_part5-->
      <section id="part_5">   
        <div class="w1200">
          <div class="part_5 material-symbols-outlined " >
              <div class="contents_text">
                  <h1>크리에이터를 꿈꾸는 취준생도! 트렌드를 이끄는 재직자도! </h1>
                  <h2>탑승 취업! 환승 이직!</h2>
              </div>
              <ul class="contents_flex">
                  <li class="contents_item">
                      <a href="#">
                          <div class="contents_bgi1 bgi_box" >
                              <img src="./images/main/part5/contents_Img1.png" alt="콘텐츠1">
                          </div>
                          <p>웹·시각·영상</p>
                      </a>
                  </li>
                  <li class="contents_item">
                      <a href="#">
                          <div class="contents_bgi2 bgi_box">
                              <img src="./images/main/part5/contents_Img2.png" alt="콘텐츠2">
                          </div>
                          <p>건축·카티아·게임</p>
                      </a>
                  </li>
                  <li class="contents_item">
                      <a href="#">
                          <div class="contents_bgi3 bgi_box">
                              <img src="./images/main/part5/contents_Img3.png" alt="콘텐츠3">
                          </div>
                          <p>
                              빅데이터 <br>
                              분석·개발·마케팅    
                          </p>    
                      </a>
                  </li>
                  <li class="contents_item">
                      <a href="#">
                          <div class="contents_bgi4 bgi_box">
                              <img src="./images/main/part5/contents_Img4.png" alt="콘텐츠4">
                          </div>
                          <p>
                              웹 개발·인공지능· <br>
                              ICT/IOT융합
                          </p>
                      </a>
                  </li>
                  <li class="contents_item">
                      <a href="#">
                          <div class="contents_bgi5 bgi_box">
                              <img src="./images/main/part5/contents_Img5.png" alt="콘텐츠5">
                          </div>
                          <p>
                              OA·디지털 마케팅· <br>
                              전산세무회계/경영
                          </p>
                      </a>
                  </li>
                  <li class="contents_item">
                      <a href="#">
                          <div class="contents_bgi6 bgi_box">
                              <img src="./images/main/part5/contents_Img6.png" alt="콘텐츠6">
                          </div>
                          <p>
                              Certification <br>
                              (자격증)
                          </p>
                      </a>
                  </li>
                  <li class="contents_item">
                      <a href="#">
                          <div class="contents_bgi7 bgi_box">
                              <img src="./images/main/part5/contents_Img7.png" alt="콘텐츠7">
                          </div>
                          <p>국비지원안내</p>
                      </a>
                  </li>
              </ul>
          </div>
        </div>
      </section><!-- main_part5-->

      <!-- main_part6-->
      <section id="part_6">
        <div class="part_6_area">
          <div class="section_6_header">
              <h1>함께해요! 실무경험!</h1>
              <a href="#" class="add_icon">
                  <div class="add">더보기</div>
                  <div class="icon">
                      <span></span>
                      <span></span>
                      <span></span>
                  </div>
              </a>
          </div>
          <div class="section_6_1_cover">
              <section class="section_6_1">
                  <div class="section_6_1_1">
                      <img src="./images/main/section6_1.jpg" alt="img1">
                      <img src="./images/main/section6_2.jpg" alt="img2">
                      <img src="./images/main/section6_3.jpg" alt="img3">
                      <img src="./images/main/section6_4.jpg" alt="img4">
                  </div>
              </section>
              <div class="section_6_2">
                  <div class="section_6_2_inner">
                      <div class="tab_1 section_6_2_tab active5">
                          디바제시카와 함께하는 <br>
                          유튜브 크리에이터 완전 정복!
                      </div>
                      <div class="tab_2 section_6_2_tab">
                          출판편집다지인 프로젝트 <br>
                          전시회 개최!
                      </div>
                      <div class="tab_3 section_6_2_tab">
                          실내건축 인테리어디자인 <br>
                          프로젝트 전시회
                      </div>
                      <div class="tab_4 section_6_2_tab">
                          출판도시 활판인쇄 박물관 <br>
                          수강생 견학!
                      </div>
                  </div>
              </div>
              <section>
                  <div class="section_6_3">
                      <div class="cover">
                          <h2>
                              디바제시카와 함께하는 <br>
                              유튜브 크리에이터 완전 정복!
                          </h2>
                          <p>
                              현직 유명 크리에이터에게 듣는 컨텐츠의 세계! <br>
                              많은 사람들이 궁금해하는 유튜버 수입구조, 구독자 늘리는 법, <br>
                              성공하는 컨텐츠, 초보 유튜버가 가장 많이 실수하는 것 등 <br>
                              많은 것을 들려주셨습니다.
                          </p>
                          <button class="looking">자세히보기</button>
                      </div>
                      <div class="cover">
                          <h2>
                              출판편집다지인 프로젝트 <br>
                              전시회 개최!
                          </h2>
                          <p>
                              이젠아카데미 강남캠퍼스에서 출판편집디자인 <br>
                              프로젝트 전시회가 개최되었습니다. <br>
                              수강생들이 참여한 프로젝트, <br>
                              그 현장 바로 가볼까요?
                          </p>
                          <button class="looking">자세히보기</button>
                      </div>
                      <div class="cover">
                          <h2>
                              실내건축 인테리어디자인 <br>
                              프로젝트 전시회
                          </h2>
                          <p>
                              이젠아카데미 인천캠퍼스에서 실내건축 인테리어디자인 <br>
                              프로젝트 전시회가 개최되었습니다. <br>
                              6개월간의 수강생들이 참여한 프로젝트, <br>
                              그 현장 바로 가볼까요?
                          </p>
                          <button class="looking">자세히보기</button>
                      </div>
                      <div class="cover">
                          <h2>
                              출판도시 활판인쇄 박물관 <br>
                              수강생 견학!
                          </h2>
                          <p>
                              출판편집과 연관성이 있는 출판, 인쇄, 제 책의 역사를 <br>
                              살펴보고, 우리나라 전통 활판 인쇄술과 책 만들기 등 <br>
                              흥미로운 체험을 할 수 있었던 <br>
                              유익한 시간~! 그 현장속으로 한 번 가보실까요?
                          </p>
                          <button class="looking">자세히보기</button>
                      </div>
                  </div>
              </section>
          </div>
        </div>
      </section> <!-- main_part6-->

      <!-- main_part7-->
      <section id="section7">
        <!-- 1. 스와이퍼 페이지 영역 -->
        <div id="portfolio" class="w1200 cf">
            <div class="semina_title">
                <div class="semina_left">
                    <p>이젠 수강생이면 누구나 참여 가능한 세미나&특강 정보</p>
                    <h2>세미나 & 특강</h2>
                </div>
                <div class="add_icon_cover">
                    <a href="#" class="add_icon">
                        <div class="add">더보기</div>
                        <div class="icon">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </a>
                </div>
            </div>
            <!-- A. 스와이퍼 최상위 구조 클래스 -->
            <div class="swiper-container">
                <!-- B. 스와이퍼 될 Contents 부모 클래스 -->
                <div class="swiper-wrapper">
                    <!-- C-1. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide">
                        <div class="p_mockup">
                            <a href="#"><img src="./images/main/slide1.jpg" alt="스와이퍼이미지01"></a>
                        </div>
                        <div class="title">
                            <a href="#"><p>정보 시스템 구축 및<br> 보안 엔지니어 양성</p></a>
                            <a href="#"><i class="fa-solid fa-angle-right"></i></a>
                        </div>
                    </div>
                    <!-- /C-1. 스와이퍼 될 Slider 각각 내용들 -->

                    <!-- C-2. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide">
                        <div class="p_mockup">
                            <a href="#"><img src="./images/main/slide2.jpg" alt="스와이퍼이미지02"></a>
                        </div>
                        <div class="title">
                            <a href="#"><p>BIM<br>건축설계</p></a>
                            <a href="#"><i class="fa-solid fa-angle-right"></i></a>
                        </div>
                    </div>
                    <!-- /C-2. 스와이퍼 될 Slider 각각 내용들 -->

                    <!-- C-3. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide">
                        <div class="p_mockup">
                            <a href="#"><img src="./images/main/slide3.jpg" alt="스와이퍼이미지03"></a>
                        </div>
                        <div class="title">
                            <a href="#"><p>멀티미디어<br>광고 영상 콘텐츠</p></a>
                            <a href="#"><i class="fa-solid fa-angle-right"></i></a>
                        </div>
                    </div>
                    <!-- /C-3. 스와이퍼 될 Slider 각각 내용들 -->

                    <!-- C-4. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide">
                        <div class="p_mockup">
                            <a href="#"><img src="./images/main/slide4.jpg" alt="스와이퍼이미지04"></a>

                        </div>
                        <div class="title">
                            <a href="#"><p>스마트 웹 콘텐츠<br> UIUX 디자인 & 프론트엔드</p></a>
                            <a href="#"><i class="fa-solid fa-angle-right"></i></a>
                        </div>
                    </div>
                    <!-- /C-4. 스와이퍼 될 Slider 각각 내용들 -->

                    <!-- C-5. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide">
                        <div class="p_mockup">
                            <a href="#"><img src="./images/main/slide5.jpg" alt="스와이퍼이미지05"></a>
                        </div>
                        <div class="title">
                            <a href="#"><p>큐레이팅 웹서비스<br> 풀스택 개발</p></a>
                            <a href="#"><i class="fa-solid fa-angle-right"></i></a>
                        </div>
                    </div>
                    <!-- /C-5. 스와이퍼 될 Slider 각각 내용들 -->

                    <!-- C-6. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide">
                        <div class="p_mockup">
                            <a href="#"><img src="./images/main/slide6.jpg" alt="스와이퍼이미지06"></a>
                        </div>
                        <div class="title">
                            <a href="#"><p>자바(JAVA)<br> 웹&앱 프로그래밍</p></a>
                            <a href="#"><i class="fa-solid fa-angle-right"></i></a>
                        </div>
                    </div>
                    <!-- /C-6. 스와이퍼 될 Slider 각각 내용들 -->

                    <!-- C-7. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide">
                        <div class="p_mockup">
                            <a href="#"><img src="./images/main/slide7.jpg" alt="스와이퍼이미지07"></a>
                        </div>
                        <div class="title">
                            <a href="#"><p>실내건축인테리어 <br>[실내건축사업기사 자격증]</p></a>
                            <a href="#"><i class="fa-solid fa-angle-right"></i></a>
                        </div>
                    </div>
                    <!-- /C-7. 스와이퍼 될 Slider 각각 내용들 -->

                    <!-- C-8. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide">
                        <div class="p_mockup">
                            <a href="#"><img src="./images/main/slide8.jpg" alt="스와이퍼이미지08"></a>
                        </div>
                        <div class="title">
                            <a href="#"><p>블렌더 3D를 이용한<br> 제페토 크리에이터</p></a>
                            <a href="#"><i class="fa-solid fa-angle-right"></i></a>        
                        </div>
                    </div>
                    <!-- /C-8. 스와이퍼 될 Slider 각각 내용들 -->

                    <!-- C-9. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide">
                        <div class="p_mockup">
                            <a href="#"><img src="./images/main/slide9.jpg" alt="스와이퍼이미지09"></a>
                        </div>
                        <div class="title">
                            <a href="#"><p>유니티 게임<br> 프로그래밍이란?</p></a>    
                            <a href="#"><i class="fa-solid fa-angle-right"></i></a> 
                        </div>
                    </div>
                    <!-- /C-9. 스와이퍼 될 Slider 각각 내용들 -->

                    <!-- C-10. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide">
                        <div class="p_mockup">
                            <a href="#"><img src="./images/main/slide10.jpg" alt="스와이퍼이미지10"></a>
                        </div>
                        <div class="title">
                            <a href="#"><p>SQL 개발자<br>(SQLD) 자격증시험</p></a> 
                            <a href="#"><i class="fa-solid fa-angle-right"></i></a>
                        </div>
                    </div>
                    <!-- /C-10. 스와이퍼 될 Slider 각각 내용들 -->

                    <!-- C-11. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide">
                        <div class="p_mockup">
                            <a href="#"><img src="./images/main/slide11.jpg" alt="스와이퍼이미지11"></a>
                        </div>
                        <div class="title">
                            <a href="#"><p>콘텐츠, 퍼포먼스<br> 광고 마케팅 실무활용</p></a> 
                            <a href="#"><i class="fa-solid fa-angle-right"></i></a>
                        </div>
                    </div>
                    <!-- /C-11. 스와이퍼 될 Slider 각각 내용들 -->

                    <!-- C-12. 스와이퍼 될 Slider 각각 내용들 -->
                    <div class="swiper-slide slide">
                        <div class="p_mockup">
                            <a href="#"><img src="./images/main/slide12.jpg" alt="스와이퍼이미지12"></a>
                        </div>
                        <div class="title">
                            <a href="#"><p>온라인 쇼핑몰 구축과 운영<br>(네이버 스마트 스토어)</p></a> 
                            <a href="#"><i class="fa-solid fa-angle-right"></i></a>
                        </div>
                    </div>
                    <!-- /C-12. 스와이퍼 될 Slider 각각 내용들 -->               

                </div>
                <!-- /B. 스와이퍼 될 Contents 부모 클래스 -->

                <!-- Aside Dot Dot Dot -->
                <aside class="circle">
                    <span class="dot swiper-button-next"></span>
                    <span class="dot"></span>
                    <span class="dot swiper-button-prev"></span>
                    <div id="loading"></div>
                    <!-- /Aside Dot Dot Dot -->
                </aside>

                <!-- Swiper -->
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                    <div class="swiper-slide"></div>
                    <div class="swiper-slide"></div>
                    <div class="swiper-slide"></div>
                    <div class="swiper-slide"></div>
                    <div class="swiper-slide"></div>
                    <div class="swiper-slide"></div>
                    <div class="swiper-slide"></div>
                    <div class="swiper-slide"></div>
                    <div class="swiper-slide"></div>
                    <div class="swiper-slide"></div>
                    <div class="swiper-slide"></div>
                    <div class="swiper-slide"></div>
                    </div>
                    <!-- <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div> -->
                    <!-- <div class="swiper-pagination"></div> -->
                    <!-- 돌아가는 원 -->
                    <div class="autoplay-progress">
                    <svg viewBox="0 0 48 48">
                        <circle cx="24" cy="24" r="20"></circle>
                    </svg>
                    <span></span>
                    </div>
                </div>



            </div>
            <!-- /A. 스와이퍼 최상위 구조 클래스 -->
        </div>
        <!-- /1. 스와이퍼 페이지 영역 -->
      </section> <!-- main_part7-->

      <!-- main_part8-->
      <section id="part_8">
        <div class="w1200 part_8_area">
            <div class="section_8_header">
                <div class="section_8_header_left">
                    <h3>
                        Ezen<img src="./images/main/section8_1.png" alt="img1"> Now
                    </h3>
                    <div class="section_8_description">
                        이젠아카데미의 소식을 만나보세요!
                    </div>
                </div>
                <div class="section_8_header_right">
                    <a href="#" class="add_icon">
                        <div class="add">
                            더보기
                        </div>
                        <div class="icon">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </a>
                </div>
            </div>
            <div class="section_8_body">
                <ul class="section_8_List">
                    <li>
                        <a href="#" class="a">
                            <img src="./images/main/section8_2.jpeg" alt="img2">
                        </a>
                    </li>
                    <li>
                        <a href="#" class="a">
                            <img src="./images/main/section8_3.jpeg" alt="img3">
                        </a>
                    </li>
                    <li>
                        <a href="#" class="a">
                            <img src="./images/main/section8_4.jpeg" alt="img4">
                        </a>
                    </li>
                    <li>
                        <a href="#" class="a">
                            <img src="./images/main/section8_5.jpeg" alt="img5">
                        </a>
                    </li>
                </ul>
            </div>
             <div class="section_8_footer">
            <h4>이젠아카데미의 더 많은 소식</h4>
            <div class="section_8_sns_1">
                <!-- 색 없는 sns -->
                <p><img src="./images/main/icons/icon-youtube.png" alt="sns1"></p>
                <p><img src="./images/main/icons/icon-instagram.png" alt="sns2"></p>
                <p><img src="./images/main/icons/icon-navertv.png" alt="sns3"></p>
                <p><img src="./images/main/icons/icon-blog.png" alt="sns4"></p>
                <p><img src="./images/main/icons/icon-facebook.png" alt="sns5"></p>
            </div>
            <div class="section_8_sns_2">
                <p><img src="./images/main/icons/icon-youtube-on.png" alt="sns1"></p>
                <p><img src="./images/main/icons/icon-instagram-on.png" alt="sns2"></p>
                <p><img src="./images/main/icons/icon-navertv-on.png" alt="sns3"></p>
                <p><img src="./images/main/icons/icon-blog-on.png" alt="sns4"></p>
                <p><img src="./images/main/icons/icon-facebook-on.png" alt="sns5"></p>
            </div>
        </div>
      </section> <!-- main_part8-->

    </main>

    <!-- 광고 배너 -->
    <div id="real_review_cover">
        <div class="real_review">
          <a href="#">
            <img src="./images/main/event/floating_gif.gif" alt="리얼 리뷰">
          </a>
          <button type="button"><i class="fa-solid fa-circle-xmark"></i></button>
        </div>
      </div> <!-- 광고 배너 -->

