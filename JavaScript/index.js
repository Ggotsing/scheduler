function loginEvent()
{
    window.open("", "login", "width=300, height=150 ");
    document.login_form.action = "./JSP_Action/login_action.jsp";
    document.login_form.target = "login";
    document.login_form.submit();
}
function showAlert() {
    alert("로그인 실패\nid나 pw를 확인해주세요");
}