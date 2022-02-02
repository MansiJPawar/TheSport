function selectAll() {
    let number = document.getElementsByName("number");
    let cityCheckLen = number.length;
    for (var x = 0; x < cityCheckLen; x++) {
        number[x].checked = true;
        f1.result.value = number[x].checked = true;
    }
}

function deselectAll() {
    let number = document.getElementsByName("number");
    let cityCheckLen = number.length;
    for (var x = 0; x < cityCheckLen; x++) {
        number[x].checked = false;
        f1.result.value = ""
    }
}

function update() {
    var select = document.getElementById('language');
    var option = select.options[select.selectedIndex];

    document.getElementById('value').value = option.value;
}