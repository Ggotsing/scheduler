function create_account_event(){
    var id_value = document.getElementById("id_value").value;
    var pw_value = document.getElementById("pw_value").value;
    var name_value = document.getElementById("name_value").value;
    var phone_value = document.getElementById("phone_value").value;
    if (id_value == "" ||pw_value == "" || name_value == "" || phone_value == "") {
        alert("공백을 채워주세요 !");
    } else if (name_value.length > 4) {
        alert("이름은 네글자 이하만 가능합니다 !");
    } else if (id_value.length > 20) {
        alert("아이디는 20자 이하로 입력해주세요 !");
    } else if (pw_value.length > 20) {
        alert("비밀번호는 20자 이하로 입력해주세요 !");
    } else if (phone_value.length != 11) {
        alert("11자리의 비밀번호를 입력해주세요 !");
    } else {
        window.open("", "create_account", "width=300, height=150 ");
        document.create_account_form.action = "../JSP_Action/create_account_action.jsp";
        document.create_account_form.target = "create_account";
        document.create_account_form.submit();
    }
}