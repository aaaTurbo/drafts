function receiveSubmit() {

    let xValue = document.getElementById("x_value").value;
    let yValue = document.getElementById("y_value").value;
    let rValue = document.getElementById("r_value").value;

    if (validate(xValue, yValue, rValue)) {
        $.ajax({
                type: 'GET',
                url: '../controller',
                async: false,
                data: {'type': "check", 'x': xValue.trim(), 'y': yValue.trim(), 'r': rValue.trim()},
                success: function (data) {
                    goToTable(data);
                },
                error: function (data) {
                    alert(data);
                },
            }
        );
    }
}

function goToTable(inf) {
    $.ajax({
            type: 'GET',
            url: '../controller',
            async: false,
            data: {'type': "redirect", 'data': "<li>" + inf + "</li></br>"},
            success: function (data) {
                window.location.href = "../table"
            },
            error: function (data) {
                alert(data)
            }
        },
    );
}