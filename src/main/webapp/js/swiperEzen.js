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

/* 팝업 오늘 그만보기 */
// 팝업 창을 열어주는 함수
function openPopup() {
    $('#popup').show();
}

// 팝업 창을 닫아주는 함수
function closePopup() {
    $('#popup').hide();
}
/* 로딩(새로고침) 시 효과 */
window.addEventListener('load', function() {
    /* 새로고침 효과 */
    var loadingOverlay = document.getElementById('loading-overlay');
    setTimeout(function() {
        loadingOverlay.style.display = 'none';
    }, 1000); // 1000ms = 1s

    var popup = document.querySelector('.popup');
    // 팝업 창을 표시하는 로직
    popup.style.display = 'block';
    // 고정값
    var a = 164;
    popup.style.top = a + 'px';

    // localStorage에서 'hidePopup' 값을 읽어옵니다.
    // 'hidePopup' 값이 'true'라면 오늘 보지 않기를 선택한 것으로 팝업을 보여주지 않습니다.
    var hidePopup = localStorage.getItem('hidePopup');
    if (hidePopup === 'true') {
        popup.style.display = 'none';
        return; // 오늘 보지 않기를 선택했으므로, 팝업 표시 로직을 여기서 종료합니다.
    }
    
    // '오늘 그만보기' 체크박스가 선택되면 'hidePopup' 값을 'true'로 설정합니다.
    document.querySelector('#tday-not').addEventListener('change', function() {
        if (this.checked) {
            localStorage.setItem('hidePopup', 'true');
        } else {
            localStorage.removeItem('hidePopup');
        }
    });
    

  });
/* 다시보기위해서 localStorge 값 지우기 */
// localStorage.removeItem('hidePopup');

// ============================================================================






