var id = document.getElementById("id").innerHTML; 
if(id == "") {
    window.opener.alert("확인 불가\n번호를 확인해주세요");
} else {
    window.opener.alert("id는 " + id + " 입니다");
}
window.close();