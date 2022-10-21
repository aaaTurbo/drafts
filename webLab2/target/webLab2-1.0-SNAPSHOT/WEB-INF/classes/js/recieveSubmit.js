function receiveSubmit() {

    let xValue = document.getElementById("x_value").value;
    let yValue = document.getElementById("y_value").value;
    let rValue = document.getElementById("r_value").value;

    if (validate(xValue, yValue, rValue)) {
        $.ajax({
            type: 'GET',
            url: 'controller',
            async: false,
            success: function (data) {
                alert(data);
            },
            error: function () {
                alert("LOX");
            },
            }
        );
    }
}