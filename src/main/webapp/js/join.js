
document.getElementById('all_Chk').addEventListener('click', function() {
  var checkboxes = document.getElementsByClassName('get_ck');
  var allChecked = this.checked;

  // get_chk와 get_chk2 체크박스를 전부 체크 또는 해제
  for (var i = 0; i < checkboxes.length; i++) {
      checkboxes[i].checked = allChecked;
  }
});
// get_chk나 get_chk2 체크박스를 클릭했을 때
var checkboxes = document.getElementsByClassName('get_ck');
for (var i = 0; i < checkboxes.length; i++) {
    checkboxes[i].addEventListener('click', function() {
        var allChk = document.getElementById('all_Chk');
        var allChecked = true;

        // get_chk와 get_chk2 체크박스를 확인하여 all chk 체크 여부 결정
        for (var j = 0; j < checkboxes.length; j++) {
            if (!checkboxes[j].checked) {
                allChecked = false;
                break;
            }
        }

        allChk.checked = allChecked;
    });
}

// 체크박스가 다 체크됐을때
var allChk2 = document.getElementById('all_Chk');
var daum = document.getElementById('daum');
if(allChk2 == true){
  daum.style.background = 'red';
}


$(".daum").click(function () {
  if ($("#all_Chk").is(":checked") && $("#all_Chk2").is(":checked")) {
    location.href = "join2.html";
  } else {
    // alert("이용약관에 동의 하세요")
  }
})



  function is_checked() {
  
    // 1. checkbox element를 찾습니다.
    const checkbox = document.getElementById('get_Chk');
    const checkbox2 = document.getElementById('get_Chk2');
    const modal = document.getElementById("modal");
    // 2. checked 속성을 체크합니다.
    const is_checked = checkbox.checked;
    const is_checked2 = checkbox2.checked;
    // 3. 결과를 출력합니다.
    if(is_checked == true && is_checked2 == true){
      location.href='join2.jsp';
    }
    else{
      modal.style.display = "block";
      document.body.style.overflow = "hidden"; // 스크롤바 제거
      setTimeout(() => {
        modal.style.display = "none";
        document.body.style.overflow = "auto";
      }, 6000);
    }
    
}

$("#input_All_chk").click(function(){
  var chk = $("#input_chk").is(':checked');
  if(chk) {
    $('#input_chk .get_ck').prop('checked',true);
  }
})

$("#close-modal").click(function () {
  $('#modal').hide();
})




