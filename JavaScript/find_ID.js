function find_ID_Event()
{
    window.open("", "find_ID", "width=300, height=150 ");
    document.find_ID_form.action = "../JSP_Action/find_ID_action.jsp";
    document.find_ID_form.target = "find_ID";
    document.find_ID_form.submit();
}