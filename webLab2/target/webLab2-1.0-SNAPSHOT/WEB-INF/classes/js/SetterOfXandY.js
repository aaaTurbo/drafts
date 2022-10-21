let btn = [document.getElementById("x-5"), document.getElementById("x-4"),
    document.getElementById("x-3"), document.getElementById("x-2"),
    document.getElementById("x-1"), document.getElementById("x0"),
    document.getElementById("x1"), document.getElementById("x2"), document.getElementById("x3")];

function setX(v, id) {
    document.getElementById("x_value").value = v;
    if (document.getElementById(id).style.backgroundColor !== "#CCCC66") {
        document.getElementById(id).style.backgroundColor = "#CCCC66";
    }
    for (let i = 0; i < btn.length; i++) {
        if (btn[i].id !== id) {
            btn[i].style.backgroundColor = "#CC9933";
        }
    }
}

function setR(v) {
    document.getElementById("r_value").value = v;
    document.getElementById("-r").innerHTML = v;
    document.getElementById("-r2").innerHTML = v + "/2";
    document.getElementById("r").innerHTML = v;
    document.getElementById("r2").innerHTML = v + "/2";
    document.getElementById("-R").innerHTML = v;
    document.getElementById("-R2").innerHTML = v + "/2";
    document.getElementById("R").innerHTML = v;
    document.getElementById("R2").innerHTML = v + "/2";
    if (document.getElementById("r_value").value !== "") {
        document.getElementById("tooltiptext").style.visibility = 'hidden';
    } else {
        document.getElementById("tooltiptext").style.visibility = 'visible';
    }
}

function errase() {
    document.getElementById("r_value").value = "";
    document.getElementById("x_value").value = "";
    for (let i = 0; i < btn.length; i++) {
        btn[i].style.backgroundColor = "#CC9933";
    }
    document.getElementById("-r").innerHTML = "-R";
    document.getElementById("-r2").innerHTML = "-R/2";
    document.getElementById("r").innerHTML = "R";
    document.getElementById("r2").innerHTML = "R/2";
    document.getElementById("-R").innerHTML = "-R";
    document.getElementById("-R2").innerHTML = "-R/2";
    document.getElementById("R").innerHTML = "R";
    document.getElementById("R2").innerHTML = "R/2";
    document.getElementById("tooltiptext").style.visibility = 'visible';
}