var name_value = document.getElementById("name_value").innerHTML; 
console.log(name_value)
if (name_value == 'null') {
    window.opener.showAlert();
    window.close();
} else {
    window.opener.location.href = "../JSP/main.jsp";
    window.close();
}