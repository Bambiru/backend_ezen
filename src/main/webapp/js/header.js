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

// 새로고침시 화면 맨위로
window.history.scrollRestoration = "manual";

/* 준비중 알림창 */
$('a[href="#"]').click(function(){
    $('.jiseokalert').stop().fadeIn();
    setTimeout(() => {
        $('.jiseokalert').stop().fadeOut();
    }, 2000);
})