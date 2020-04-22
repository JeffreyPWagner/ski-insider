var resortSelect = document.getElementById("resort_id");

resortSelect.onchange = function() {
    var resortNum = resortSelect.options[resortSelect.selectedIndex].value;
    window.location.href = 'https://ski-insider.herokuapp.com/resorts/' + resortNum;
};