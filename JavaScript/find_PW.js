function find_PW_Event()
{
    window.open("", "find_PW", "width=300, height=150 ");
    document.find_PW_form.action = "../JSP_Action/find_PW_action.jsp";
    document.find_PW_form.target = "find_PW";
    document.find_PW_form.submit();
}