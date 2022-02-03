function selectAll() {
    let color = document.getElementsByName("color");
    let cityCheckLen = color.length;
    for (var x = 0; x < cityCheckLen; x++) {
        color[x].checked = true;
        data.result.value = color[x].checked = true;
    }
}

function deselectAll() {
    let color = document.getElementsByName("color");
    let cityCheckLen = color.length;
    for (var x = 0; x < cityCheckLen; x++) {
        color[x].checked = false;
        data.result.value = ""
    }
}

function update() {
    var select = document.getElementById('status');
    var option = select.options[select.selectedIndex];

    document.getElementById('value').value = option.value;
}