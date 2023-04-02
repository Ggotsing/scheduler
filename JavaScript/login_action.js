console.log(<%=name_value%>);
if ('<%=name_value%>' === null || '<%=name_value%>' === 'null' || '<%=name_value%>' === '' || '<%=name_value%>' === "" ) {
    window.opener.showAlert();
    window.close();
} else {
    window.opener.location.href = "../JSP/main.jsp";
    window.close();
}