var resortSelect = document.getElementById("resort_id");

resortSelect.onchange = function() {
    var resortNum = resortSelect.options[resortSelect.selectedIndex].value;
    window.location.href = 'http://localhost:3000/resorts/' + resortNum;
};