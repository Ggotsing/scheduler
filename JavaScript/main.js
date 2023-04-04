var id_value = document.getElementById("id_value").innerHTML; 
var name_value = document.getElementById("name_value").innerHTML; 
console.log(id_value);
console.log(name_value);
function move_aside() {
    var aside = document.getElementsByTagName("aside");
    if (aside[0].style.left == "0px") {
        aside[0].style.left = "-300px";
    } else {
        aside[0].style.left = "0px";
    }
}

function add_schedule() {
    var footer = document.getElementsByTagName("footer");
    if (footer[0].style.bottom == "0px") {
        footer[0].style.bottom = "-300px";
    } else {
        footer[0].style.bottom = "0px";
    }
}
