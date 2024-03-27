function changeValue(id, delta) {
    var input = document.getElementById(id);
    var currentValue = parseInt(input.value);
    var newValue = currentValue + delta;

    if (newValue >= 0) {
        input.value = newValue;
    }
}