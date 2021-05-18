
function preparePage() {
    $(document).ready(function () {
      $('#translations_table').DataTable({
            "pagingType": "simple"
        });
        $('.dataTables_length').addClass('bs-select');
    })

    var filter_input = sessionStorage.getItem("filter");
    var search_input = document.getElementById("search-input");
    if(filter_input != null) {
        search_input.value = filter_input;
        filterTerms();
    }

    var filterDiv = document.getElementById('filterDiv');
    var filter_opened = sessionStorage.getItem("filter_opened");
    if(filter_opened == null) {
        filter_opened = document.getElementById('filter_opened');
        sessionStorage.setItem("filter_opened", filter_opened.value);
    }
    if(filter_opened == "true") {
        filterDiv.style.display = "block";
    }
    else {
        filterDiv.display = "none";
    }

    var spanish_checked = sessionStorage.getItem("spanish_checked");
    if(spanish_checked == null) { spanish_checked = "true"; sessionStorage.setItem("spanish_checked", "true"); }
    var arabic_checked = sessionStorage.getItem("arabic_checked");
    if(arabic_checked == null) { arabic_checked = "true"; sessionStorage.setItem("arabic_checked", "true"); }
    var farsi_dari_checked = sessionStorage.getItem("farsidari_checked");
    if(farsi_dari_checked == null) { farsi_dari_checked = "true"; sessionStorage.setItem("farsidari_checked", "true"); }
    var swahili_checked = sessionStorage.getItem("swahili_checked");
    if(swahili_checked == null) { swahili_checked = "true"; sessionStorage.setItem("swahili_checked", "true"); }
    var french_checked = sessionStorage.getItem("french_checked");
    if(french_checked == null) { french_checked = "true"; sessionStorage.setItem("french_checked", "true"); }
    var chinese_checked = sessionStorage.getItem("chinese_checked");
    if(chinese_checked == null) { chinese_checked = "true"; sessionStorage.setItem("chinese_checked", "true"); }
    var korean_checked = sessionStorage.getItem("korean_checked");
    if(korean_checked == null) { korean_checked = "true"; sessionStorage.setItem("korean_checked", "true"); }
    var nepali_checked = sessionStorage.getItem("nepali_checked");
    if(nepali_checked == null) { nepali_checked = "true"; sessionStorage.setItem("nepali_checked", "true"); }
    var pashto_checked = sessionStorage.getItem("pashto_checked");
    if(pashto_checked == null) { pashto_checked = "true"; sessionStorage.setItem("pashto_checked", "true"); }

    if(spanish_checked != "true") {
        toggleLanguage(1, 'spanish_header');
    }
    if(arabic_checked != "true") {
        toggleLanguage(2, 'arabic_header');
    }
    if(farsi_dari_checked != "true") {
        toggleLanguage(3, 'farsidari_header');
    }
    if(swahili_checked != "true") {
        toggleLanguage(4, 'swahili_header');
    }
    if(french_checked != "true") {
        toggleLanguage(5, 'french_header');
    }
    if(chinese_checked != "true") {
        toggleLanguage(6, 'chinese_header');
    }
    if(korean_checked != "true") {
        toggleLanguage(7, 'korean_header');
    }
    if(nepali_checked != "true") {
        toggleLanguage(8, 'nepali_header');
    }
    if(pashto_checked != "true") {
        toggleLanguage(9, 'pashto_header');
    }


}

function toggleFilter() {
    var filterDiv = document.getElementById('filterDiv');
    filter_opened = document.getElementById('filter_opened');
    if(filterDiv.style.display == "none") {
        filterDiv.style.display = "block";
        filter_opened.value = "true";
        sessionStorage.setItem("filter_opened", "true");
    }
    else {
        filterDiv.style.display = "none";
        filter_opened.value = "false";
        sessionStorage.setItem("filter_opened", "false");
    }
}

function toggleSpanish() {
    toggleLanguage(1, 'spanish_header');
}

function toggleArabic() {
    toggleLanguage(2, 'arabic_header');
}

function toggleFarsiDari() {
    toggleLanguage(3, 'farsidari_header');
}

function toggleSwahili() {
    toggleLanguage(4, 'swahili_header');
}

function toggleFrench() {
    toggleLanguage(5, 'french_header');
}

function toggleChinese() {
    toggleLanguage(6, 'chinese_header');
}

function toggleKorean() {
    toggleLanguage(7, 'korean_header');
}

function toggleNepali() {
    toggleLanguage(8, 'nepali_header');
}

function togglePashto() {
    toggleLanguage(9, 'pashto_header');
}

function toggleLanguage(col, header_id) {
    var table = document.getElementById('translations_table');
    var translations = table.getElementsByTagName('tr');
    var header = document.getElementById(header_id);
    var display_option;

    var language = header_id.split("_")[0];
    var language_key = language.concat("_checked");

    var language_checkbox_key = language.concat("_checkbox");
    var language_checkbox = document.getElementById(language_checkbox_key);

    if(header.style.display == "none") {
        display_option = "";
        language_checkbox.checked = true;
        sessionStorage.setItem(language_key, "true");
    }
    else {
        display_option = "none";
        language_checkbox.checked = false;
        sessionStorage.setItem(language_key, "false");
    }

    for(var i = 0; i < translations.length; i++) {
        var cells = translations[i].getElementsByTagName('td');
        cells[col].style.display = display_option;
    }
}

function filterTerms() {
    var table = document.getElementById("translations_table");
    var translations = table.getElementsByTagName("tr");
    var english_terms = [];
    for(var i = 1; i < translations.length; i++) {
        var cells = translations[i].getElementsByTagName("td");
        term = cells[0];
        english_terms.push(term);
    }

    var input = document.getElementById("search-input");
    var filter = input.value.toLowerCase();
    var term;
    var terms_to_remove = [];
    var terms_to_include = [];
    for(var i = 0; i < english_terms.length; i++) {
        term = english_terms[i].textContent.toLowerCase();
        if(term.includes(filter)) {
            terms_to_include.push(english_terms[i]);
        }
        else {
            terms_to_remove.push(english_terms[i]);
        }
    }

    var row;
    for(var i = 0; i < terms_to_include.length; i++) {
        row = terms_to_include[i].parentElement;
        row.style.display = "";
    }

    for(var i = 0; i < terms_to_remove.length; i++) {
        row = terms_to_remove[i].parentElement;
        row.style.display = "none";
    }

    sessionStorage.setItem("filter", filter);
}


function tdclick(e, lang){ 
    if (!e) var e = window.event;
    e.cancelBubble = true;
    if (e.stopPropagation) e.stopPropagation();

    var id = e.target.id.split('-')[1];
    var element_id = lang.concat("-audio-").concat(id);
    document.getElementById(element_id).play();
};
