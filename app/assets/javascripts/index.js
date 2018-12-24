function changeSexForced() {
    var selectedMan = document.getElementById("selectedMan");
    var selectedWoman = document.getElementById("selectedWoman");
    var selectedLabelMan = document.getElementById("selectedLabelMan");
    var selectedLabelWoman = document.getElementById("selectedLabelWoman");

    if (selectedMan.checked) {
        //選択地変更することでCSSを変更する
        selectedLabelMan.classList.add("focus");
        selectedLabelMan.classList.add("actice");
        selectedLabelWoman.classList.remove("focus");
        selectedLabelWoman.classList.remove("actice");

        selectedWoman.checked = false;
    } else {
        //選択地変更することでCSSを変更する
        selectedLabelMan.classList.remove("focus");
        selectedLabelMan.classList.remove("actice");
        selectedLabelWoman.classList.add("focus");
        selectedLabelWoman.classList.add("actice");

        selectedWoman.checked = true;
    }
}