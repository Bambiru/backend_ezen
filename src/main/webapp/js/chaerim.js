
const progressCircle = document.querySelector("#section7 .autoplay-progress svg");
const progressContent = document.querySelector("#section7 .autoplay-progress span");

var swiper7 = new Swiper("#section7 .mySwiper", {
  spaceBetween: 30,
  centeredSlides: true,
  autoplay: {
    delay: 4000,
    disableOnInteraction: false
  },
  pagination: {
    el: "#section7 .swiper-pagination",
    clickable: true
  },
  navigation: {
    nextEl: "#section7 .swiper-button-next",
    prevEl: "#section7 .swiper-button-prev"
  },
  on: {
    autoplayTimeLeft(s, time, progress) {
      progressCircle.style.setProperty("--progress", 1 - progress);
      progressContent.textContent = `${Math.ceil(time / 1000)}s`;
    }
  }
});

// 스와이퍼 생성 | .swiper-container = 구조 Swiper 클래스
var swiper8 = new Swiper('#section7 .swiper-container',{
    /* a. 슬라이드 보이는 갯수 */
    slidesPerView: 4,
    /* b. 슬라이드 사이 간격 */
    spaceBetween: '3%',
    /* c. 슬라이드 반복 여부 */
    loop: true,
    /* d. 그룹수 맞추기 => 안 맞을경우 빈칸으로 채우기 여부 */
    loopFillGroupWidthBlank: true,

    /* 자동 슬라이드 효과(false-비활성화)*/ 
    autoplay: {     //자동슬라이드
        delay: 4000, // 시간 설정
        disableOnInteraction: false, // false-스와이프 후 자동 재생
      },

    // 페이지, 넘버링
    pagination: {
        // 적용 구조에 코딩된 클래스명
        el: '#section7 .swiper-pagination',
        type: 'bullets',
        // bullets 적용후, 점박이 클릭시 해당 슬라이드로 링크여부
        clickable: true,
        type: 'fraction',
    },
    // 네비게이션 좌우 화살표
    navigation: {
        nextEl: '#section7 .swiper-button-next',
        prevEl: '#section7 .swiper-button-prev',
    }
});




