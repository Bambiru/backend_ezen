  $("#myForm").submit(function(e) {
       // 아이디를 입력하지 않은 경우
		if($("#id").val() == "") {
			$("#modal").show();
			$("#modal").find('p').text("아이디를 입력해주세요");
           e.preventDefault();  // 실제로 폼을 제출하지 않음
           return;
       }

       // 비밀번호를 입력하지 않은 경우
       if($("#password").val() == "") {
			$("#modal").show();
			$("#modal").find('p').text("비밀번호를 입력해주세요");
           e.preventDefault();  // 실제로 폼을 제출하지 않음
           return;
       }

       if($("#password2").val() == "") {
			$("#modal").show();
			$("#modal").find('p').text("비밀번호확인란을 입력해주세요");

           e.preventDefault();  // 실제로 폼을 제출하지 않음
           return;
       }

       // 비밀번호확인을 입력하지 않은 경우
		if($("#password").val() != $("#password2").val()){
			$("#modal").show();
			$("#modal").find('p').text("비밀번호가 다릅니다, 다시 확인해주세요");
			e.preventDefault();
			return;
		}

       // 이름을 입력하지 않은 경우
       if($("#name").val() == "") {
			$("#modal").show();
			$("#modal").find('p').text("이름을 입력해주세요");
			
           e.preventDefault();  // 실제로 폼을 제출하지 않음
           return;
       }
       // 성별을 입력하지 않은 경우
       if($("#gender").val() == null) {
			$("#modal").show();
			$("#modal").find('p').text("성별을 선택해주세요");

           e.preventDefault();  // 실제로 폼을 제출하지 않음
           return;
       }
       // 생년월일을 입력하지 않은 경우
       if($("#birthdate").val() == "") {
			$("#modal").show();
			$("#modal").find('p').text("생년월일을 입력해주세요");
			
           e.preventDefault();  // 실제로 폼을 제출하지 않음
           return;
       }
       // 이메일을 입력하지 않은 경우
       if($("#email").val() == "") {
			$("#modal").show();
			$("#modal").find('p').text("이메일을 입력해주세요");
	
           e.preventDefault();  // 실제로 폼을 제출하지 않음
           return;
       }
       // 휴대폰번호를 입력하지 않은 경우
       if($("#tel").val() == "") {
			$("#modal").show();	
			$("#modal").find('p').text("휴대폰번호를 입력해주세요");
	
           e.preventDefault();  // 실제로 폼을 제출하지 않음
           return;
       }
       // 인증방법이 선택되지 않은 경우
       if($("input[name='certification']:checked").length == 0) {
			$("#modal").show();
			$("#modal").find('p').text("인증방법을 선택해주세요");
	

           e.preventDefault();  // 실제로 폼을 제출하지 않음
           return;
       }
       // 회원구분을 선택되지 않은 경우
       if($("input[name='classification']:checked").length == 0) {
			$("#modal").show();
			$("#modal").find('p').text("회원구분을 선택해주세요");

           e.preventDefault();  // 실제로 폼을 제출하지 않음
           return;
       }

       // 캠퍼스가 선택되지 않은 경우
       if($("input[name='campus']:checked").length == 0) {
			$("#modal").show();
			$("#modal").find('p').text("캠퍼스를 선택해주세요");
			
           e.preventDefault();  // 실제로 폼을 제출하지 않음
           return;
       }
       // 수신동의가 선택되지 않은 경우
       if($("input[name='reception']:checked").length == 0) {
			$("#modal").show();
			$("#modal").find('p').text("수신동의를 선택해주세요");

           e.preventDefault();  // 실제로 폼을 제출하지 않음
           return;
       }
   });



/* 모달창 닫기 */
$("#close-modal").click(function () {
  $('#modal').hide();
})

/* 준비중 알림창 */
$('a[href="#"]').click(function(){
    $('.jiseokalert').stop().fadeIn();
    setTimeout(() => {
        $('.jiseokalert').stop().fadeOut();
    }, 2000);
})
