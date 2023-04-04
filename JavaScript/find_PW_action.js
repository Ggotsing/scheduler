var pw = document.getElementById("pw").innerHTML; 
if(pw == "") {
    window.opener.alert("확인 불가\n아이디나 번호를 확인해주세요");
} else {
    window.opener.alert("비밀번호는 " + pw + " 입니다");
}
window.close();