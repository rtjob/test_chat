function changeSexForced() {
    var selectedMan = document.getElementById("selectedMan");
    var selectedWoman = document.getElementById("selectedWoman");
    var selectedLabelMan = document.getElementById("selectedLabelMan");
    var selectedLabelWoman = document.getElementById("selectedLabelWoman");

    if (selectedMan.checked) {
        //選択地変更することでCSSを変更する
        selectedLabelMan.classList.remove("btn-default");
        selectedLabelMan.classList.add("btn-success");
        selectedLabelMan.classList.add("focus");
        selectedLabelMan.classList.add("actice");

        selectedLabelWoman.classList.remove("btn-danger");
        selectedLabelWoman.classList.add("btn-default");
        selectedLabelWoman.classList.remove("focus");
        selectedLabelWoman.classList.remove("actice");

    } else {
        //選択地変更することでCSSを変更する
        selectedLabelMan.classList.remove("btn-success");
        selectedLabelMan.classList.add("btn-default");
        selectedLabelMan.classList.remove("focus");
        selectedLabelMan.classList.remove("actice");

        selectedLabelWoman.classList.remove("btn-default");
        selectedLabelWoman.classList.add("btn-danger");
        selectedLabelWoman.classList.add("focus");
        selectedLabelWoman.classList.add("actice");

    }
}