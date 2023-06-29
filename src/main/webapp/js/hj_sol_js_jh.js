
  // #main_part2 의 공지사항 스와이퍼
  const swiper4 = new Swiper("#main_part2 .swiper", {
    // Optional parameters
    direction: "vertical",
    loop: true,
    autoplay: {
      delay: 4000,
    },

    // And if we need scrollbar
    scrollbar: {
      el: ".swiper-scrollbar",
    },
  });



  // #main_part2-1 의 수강생 후기 스와이퍼
  const swiper2 = new Swiper("#main_part2-1 #port_review_list_area .swiper", {
    // Optional parameters
    direction: "horizontal",
    loop: true,
    autoplay: {
      delay: 4000,
    },

    // And if we need scrollbar
    scrollbar: {
      el: ".swiper-scrollbar",
    },
  });



  
  // #main_part2-1 의 포트폴리오 스와이퍼
  const swiper3 = new Swiper("#main_part2-1 .pilc_view .swiper", {
    // Optional parameters
    direction: "horizontal",
    loop: true,
    slidesPerView: 3,
    // 가운데 슬라이드 지정
    centeredSlides: true,
    spaceBetween: 1,
     autoplay: {
       delay: 4000,
     },

    // 슬라이드 클릭시 해당 슬라이드로 넘어감
    slideToClickedSlide: true,
    // 스와이퍼 드래그 기능 막기
    touchRatio: 0,
    // If we need pagination
    pagination: {
      el: "#main_part2-1 .pilc_view .swiper-pagination",
      type: "fraction",
    },

    // Navigation arrows
    navigation: {
      // 변수이름을 내가 주고 싶은 것으로 주면 버튼 커스텀을하고 그버튼으로 넘길수 있다
      nextEl: "#main_part2-1 .pilc_view .btn_right",
      prevEl: "#main_part2-1 .pilc_view .btn_left",
    },

    // And if we need scrollbar
    scrollbar: {
      el: ".swiper-scrollbar",
    },
  });


// 광고버튼 닫기
$("#real_review_cover button").click(function () {
  $("#real_review_cover").hide();
});


// 

// 등장액션 대상: .showBx

const showBox2 = document.querySelectorAll("#main_part2-1");
const showBox3 = document.querySelectorAll("#part3");
const showBox4 = document.querySelectorAll("#main_part4");
const showBox5 = document.querySelectorAll("#part_5 .part_5_cover");
const showBox6 = document.querySelectorAll("#part_6 .part_6_area");
const showBox7 = document.querySelectorAll("#section7 #portfolio");
const showBox8 = document.querySelectorAll("#part_8 .part_8_area");
// 화면높이값 2/3 구하기
const screenH = window.innerHeight / 3 * 2;

// 등장액션 대상 위치값 리턴함수
const retVal = ele => ele.getBoundingClientRect().top;

// 클래스 넣기 함수
const showTit = x => {
  let xval = retVal(x);
  if (xval < screenH && xval > 0) {
    // 요소가 화면에 나타날 때 opacity를 1로 변경
    x.classList.add("on");
  }
};

window.addEventListener("scroll", () => {
  // 스크롤 등장요소 개수만큼 for문 돌리기

  for (let x of showBox2) showTit(x);
  for (let x of showBox3) showTit(x);
  for (let x of showBox4) showTit(x);
  for (let x of showBox5) showTit(x);
  for (let x of showBox6) showTit(x);
  for (let x of showBox7) showTit(x);
  for (let x of showBox8) showTit(x);
});

// a링크 기능 제거
$('a[href="#"]').click(function (event) {
  event.preventDefault();
});

// 여기부터 효진님 js=====================================================================


const part3_swiper = new Swiper('#part3 .part3_swiper', {
    // Optional parameters
      // Optional parameters
      loop: true,
      direction: 'horizontal',
      slidesPerView: 6,
      centeredSlides: true,
      spaceBetween : 2,
      loopAdditionalSlides : 2, // 슬라이드 반복 시 마지막 슬라이드에서 다음 슬라이드가 보여지지 않는 현상 수정
      loopedSlides: 3,
      slideToClickedSlide : true,
     autoplay: {
       delay: 4000,
     },
    // Navigation arrows
    navigation: {
      // 변수이름을 내가 주고 싶은 것으로 주면 버튼 커스텀을하고 그버튼으로 넘길수 있다
      nextEl: "#part3 .btn_right",
      prevEl: "#part3 .btn_left",
    },
  
  });
  
  part3_swiper.on('transitionEnd', function() {
      console.log(' index :', part3_swiper.realIndex);
    
    switch(part3_swiper.realIndex){
      case 0:
        $('.part3_title').html(
          "<h2>웹 UI/UX 콘텐츠 디자인</h2>"+
          "<p>간단한 아이콘부터, 인터페이스 디자인은 물론 모바일 웹사이트 디자인까지!<br>"+
          "최신 트렌드와 사용자의 요구사항에 맞춘 실용적인 디자인으로 웹디자인의 완성도를 높이는 과정</p>");
          break;
      case 1:
        $('.part3_title').html(
          "<h2>멀티미디어 영상콘텐츠</h2>"+
          "<p>영상콘텐츠 기획,제작을 통한 다양한 영상편집제작 노하우와 스킬로<br>"+
          "나만의 스타일로 포트폴리오를 제작</p>");
          break;
      case 2:
        $('.part3_title').html(
          "<h2>카티아(CATIA) 자동차설계</h2>"+
          "<p>카티아를 활용한 3D형상 모델링 작업을 통한 기계설계부터<br>"+
          "자동차 설계의 이론을 학습하고 , 패키지, 차체, 의장 설계 실습까지 한번에 -</p>");
          break;
      case 3:
        $('.part3_title').html(
          "<h2>UI/UX 디자인 (Adobe XD)</h2>"+
          "<p>경쟁력을 갖고 싶은 디자이너라면<br>"+
          "UX,UI는 물론 현업에서 사용하는 XD까지 -</p>");
          break;
      case 4:
        $('.part3_title').html(
          "<h2>3D환경 실내건축 디자인</h2>"+
          "<p>공간설계 인테리어 디자인을 넘어서<br>"+
          "사람·환경·디자인·생활·문화까지 고려한 실무 수업</p>");
          break;   
      case 5:
        $('.part3_title').html(
          "<h2>전산세무회계실무 (전산회계,세무)</h2>"+
          "<p>실무처리 능력을 갖추고 기출문제 풀이를 통해 한국세무사회에서 주최하는<br>"+
          "전산회계1급, 전산세무2급자격 까지 취득하여 취업까지 연계한 회계실무교육</p>");
          break;  
      case 6:
        $('.part3_title').html(
          "<h2>구글애널리틱스 디지털마케팅</h2>"+
          "<p>다양한 데이터 분석과 예측을 통해, 마케팅 전략수립으로<br>"+
          "고객 유입을 통해 매출 확보로 이어지는 구글애널리틱스</p>");
          break;
      case 7:
        $('.part3_title').html(
          "<h2>SQLD 개발자</h2>"+
          "<p>데이터베이스는 결국 SQL에 의해서만 데이터에 접근이 가능하기 때문에<br>"+
          "직무수행에 있어 데이터 조작과 추출하는데 최적의 성능을 발휘 할수 있도록 학습</p>");
          break;
      case 8:
        $('.part3_title').html(
          "<h2>React.js 프론트엔드개발</h2>"+
          "<p>UI 컴포넌트 개발에 대한 새로운 관점으로 주목받고 있는 리액트(React)는<br>"+
          "프론트엔드 개발자가 되기 위해 꼭 알아야 할 필수 과정</p>");
          break;
      case 9:
        $('.part3_title').html(
          "<h2>node.js 프론트엔드개발</h2>"+
          "<p>개발의 기초 및 이해, 환경설정 부터 Node.js로 웹 페이지 개발을 위한<br>"+
          "문법학습 및 알고리즘에 대한 이해를 교육</p>");
          break;
      case 10:
        $('.part3_title').html(
          "<h2>빅데이터 분석과 데이터마이닝</h2>"+
          "<p>파이썬과 방법론을 기반으로 한 빅데이터 고급 분석 기술과<br>"+
          "양질의 데이터를 탐색,분석하는 데이터 마이닝을 학습하는 교육</p>");
          break;   
    }
  });
  
// 여기부터 솔님 js=====================================================================

//로딩 시 첫번째 이미지 보이게
$(".section_6_1_1").children("img").eq(0).show();
$(".section_6_3").children(".cover").eq(0).show();

let img = $(".section_6_1_1").children("img");
let text = $(".section_6_3").children(".cover");

for (let i = 0; i < 4; i++) {
  $(".tab_" + (i + 1)).click(function () {
    img.siblings().hide();
    img.eq(i).show();

    text.siblings().hide();
    text.eq(i).show();
  });
}

$('#part_6 .section_6_2_tab').click(function () {
  $('#part_6 .section_6_2_tab').removeClass('active5');
  $(this).addClass('active5');
})

const li1 = document.querySelectorAll(".section_8_sns_1 p");
const li2 = document.querySelectorAll(".section_8_sns_2 p");
for (let i = 0; i < li1.length; i++) {
    li1[i].addEventListener("mouseover", function () {
        this.style.opacity = "0";
    });
    li1[i].addEventListener("mouseleave", function () {
        this.style.opacity = "1";
    });
}

// 여기부터 지석님 js=====================================================================

// 스와이퍼 생성 | .swiper-container = 구조 Swiper 클래스
var swiper5 = new Swiper('#section1 .swiper-container',{
    // a. 슬라이드 보이는 갯수
    slidesPerView: 1,
    // b. 슬라이드 사이 간격
    spaceBetween: '10.333333%',
    // c. 슬라이드 반복 여부
    loop: true,
    // d. 그룹수 맞추기=> 안 맞을경우 빈칸으로 채우기 여부
    loopFillGroupWidthBlank: true,
    // e. 활성 슬라이드 항상 가운데 배치하기
    centeredSlides: true,
	autoplay: {
       delay: 4000,
     },
    //페이지, 넘버링
    pagination: {
        // 적용 구조에 코딩된 클래스명
        el:'#section1 .swiper-pagination',
        type : 'bullets',
        // bullets 적용후, 점박이 클릭시 해당 슬라이드로 링크여부
        clickable:true,
    },
    /* 슬라이드효과 */
    effect: "fade",
    // 네비게이션 좌우 화살표
    navigation: {
        nextEl: '#section1 .swiper-button-next',
        prevEl: '#section1 .swiper-button-prev',
    }
});
setTimeout(function() {
    for (var i = 0; i < firstImages.length; i++) {
        var firstImage = firstImages[i];
        firstImage.style.opacity = "1";
    }
}, 200);  // 이미지가 보이기 시작하는 시간
setTimeout(function() {
    for (var j = 0; j < secondImages.length; j++) {
        var secondImage = secondImages[j];
        secondImage.style.opacity = "1";
    }
}, 600);  // 이미지가 보이기 시작하는 시간



/* 스와이퍼 이미지 시간순으로 나오도록 */

var firstImages = document.getElementsByClassName('firstImg');
var secondImages = document.getElementsByClassName('secondImg');
swiper5.on('slideChangeTransitionStart', function() {
    /* 배경이미지 크기 조절 */
    var activeSlide = document.querySelector('.swiper-slide-active');
    // 먼저 애니메이션을 초기화합니다
    activeSlide.style.animation = "none";
    // 브라우저가 변경 사항을 인식하게 하기 위해 강제로 리플로우를 발생시킵니다
    activeSlide.offsetHeight; // jshint ignore:line
    activeSlide.style.animation = "resize 2s";
    for (var i = 0; i < firstImages.length; i++) {
        var firstImage = firstImages[i];
        firstImage.style.opacity = "0";
        firstImage.style.transition = "opacity 0s";
    }

    for (var j = 0; j < secondImages.length; j++) {
        var secondImage = secondImages[j];
        secondImage.style.opacity = "0";
        secondImage.style.transition = "opacity 0s";
    }
});
swiper5.on('slideChangeTransitionEnd', function() {
    // var firstImage = document.getElementsByClassName('firstImg')[0];
    // var secondImage = document.getElementsByClassName('secondImg')[0];
    setTimeout(function() {
        for (var i = 0; i < firstImages.length; i++) {
            var firstImage = firstImages[i];
            firstImage.style.transition = "opacity 1s";
            firstImage.style.opacity = "1";
        }
        setTimeout(function() {
            for (var j = 0; j < secondImages.length; j++) {
                var secondImage = secondImages[j];
                secondImage.style.transition = "opacity 1s";
                secondImage.style.opacity = "1";
            }
        }, 400);
    }, 0);    
});

/* 팝업 */
var popup = document.getElementById('popup');
var span = document.getElementsByClassName("close")[0];

span.onclick = function() {
  popup.style.display = "none";
}

window.onclick = function(event) {
  if (event.target == popup) {
    popup.style.display = "none";
  }
}

/* 로딩(새로고침) 시 효과 */
window.addEventListener('load', function() {
    /* 팝업 낙하 */
    var popup = document.querySelector('.popup');
    // 가변높이
    // var windowHeight = window.innerHeight;
    // var offsetTop = windowHeight * 0.169; // 원하는 위치로 조정 (예: 60% 아래로 이동)
    // popup.style.top = offsetTop + 'px';

    // 고정값
    var a = 164;
    popup.style.top = a + 'px';

    /* 새로고침 효과 */
    var loadingOverlay = document.getElementById('loading-overlay');
    setTimeout(function() {
      loadingOverlay.style.display = 'none';
    }, 1000); // 1000ms = 1s
  });

/* 팝업 오늘 다시 보지않기 - 구현 X*/

/* 헤더 fixed h120px 이상일때  */
var fixedNav = document.querySelector('header #nav');

window.onscroll = function() {
    var scrollTop = document.documentElement.scrollTop;
    console.log(scrollTop);
    if(scrollTop < 120){
        fixedNav.style.top = (120 - scrollTop) + 'px';
    }else{
        fixedNav.style.top = '0px';
    }
  };
