<?php
	if(!isset($_SESSION)) {
        session_start();
    }
	setcookie("user_id_cookie", session_id(), time() + (86400*30)); //User Id currently expires after one month
?>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1"> 

        <meta name="author" content="David Clark">
        <meta name="description" content="Translation Tool">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="styles/main.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>

        <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"> -->

        <!-- <script src="js/translations.js"></script> -->

        <title>Translation Tool</title>
    </head>

    <body onload="preparePage();">
                
        <nav class="navbar navbar-expand-md bg-dark navbar-dark">
            <a class="navbar-brand py-0" href="translations.php">Translation Tool</a> 

            <!-- Button to open admin access modal -->
            <?php if(!isset($_SESSION['admin']) || !$_SESSION['admin']): ?>
                <button class="btn-secondary" data-toggle="modal" data-target="#open_about" style="display: inline; float: left; margin: 7px 3% 7px auto;">
                    About
                </button>

                <button class="btn-secondary" data-toggle="modal" data-target="#unlock-admin"style="display: inline; margin: 7px 3% 7px 0px;">
                    <i class="fa fa-lock" aria-hidden="true"></i>
                </button>


            <?php elseif($_SESSION['admin']): ?>
                <form name="lock-admin" id="lock-admin" action="lock_admin.php" method="get">
                </form>
                <button class="btn-secondary" data-toggle="modal" data-target="#open_about" style="display: inline; float: left; margin: 7px 3% 7px auto;">
                    About
                </button>
                <button type="submit" form="lock-admin" class="btn-secondary" id="lock-admin" value="Submit" style="display: inline; margin: 7px 3% 7px 0px;" onclick="javascript:getElementById(this.getAttribute('form')).submit();">
                    <i class="fa fa-unlock" aria-hidden="true"></i>
                </button>
            <?php endif; ?>

        </nav>

        <input type="text" id="search-input" class="form-control col-4 title" placeholder="Search" onkeyup="filterTerms();" autofocus></input>

        <button class="btn-secondary" style="margin: 25px 9% 20px 8.33%; font-size: 22px; padding: 5px" onclick="toggleFilter();">
            Select Languages
        </button>

        <!-- Open modal if error message is present -->
        <?php if(isset($_SESSION['error_message']) && $_SESSION['error_message'] != ""): ?>
            <script> 
                $(document).ready(function(){
                    $("#unlock-admin").modal('show');
                });
            </script>
        <?php endif;?>
        <!-- Admin Access Modal -->
        <div class="modal" id="unlock-admin">
          <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" style="padding-bottom: 15px;">&times;</button>
                    <form name="unlock-admin" action="unlock_admin.php" method="POST">
                        <div class="form-group" style="padding: 20px 0 10px 0;">
                            <input type="text" id="access-code" class="form-control" name="access-code" placeholder="Enter access code" />
                            <p style="color: red; padding: 5px">
                                <?php if(isset($_SESSION['error_message'])) {
                                    echo $_SESSION['error_message'];
                                }
                                ?>
                            </p>
                        </div>

                        <input type="submit" id="submit" class="btn-secondary" value="Submit" style="padding: 5px; margin: 0 40% 0 40%;"/>
                    </form>
                </div>

            </div>
          </div>
        </div>


        <div class="filter-container col-10" id="filterDiv" style="display: none">
            <div class="col-3">
                <input type="checkbox" id="spanish_checkbox" name="spanish_checkbox" value="Spanish" onclick="toggleSpanish();" checked>
                <label for="spanish_checkbox">Spanish</label>
            </div>
            <div class="col-3">
                <input type="checkbox" id="arabic_checkbox" name="arabic_checkbox" value="Arabic" onclick="toggleArabic();" checked>
                <label for="arabic_checkbox">Arabic</label>
            </div>
            <div class="col-3">
                <input type="checkbox" id="farsidari_checkbox" name="farsidari_checkbox" value="Farsi/Dari" onclick="toggleFarsiDari();" checked>
                <label for="farsidari_checkbox">Farsi/Dari</label>
            </div>
            <div class="col-3">
                <input type="checkbox" id="swahili_checkbox" name="swahili_checkbox" value="Swahili" onclick="toggleSwahili();" checked>
                <label for="swahili_checkbox">Swahili</label>
            </div>
            <div class="col-3">
                <input type="checkbox" id="french_checkbox" name="french_checkbox" value="French" onclick="toggleFrench();" checked>
                <label for="french_checkbox">French</label>
            </div>
            <div class="col-3">
                <input type="checkbox" id="chinese_checkbox" name="chinese_checkbox" value="Chinese" onclick="toggleChinese();" checked>
                <label for="chinese_checkbox">Chinese</label>
            </div>
            <div class="col-3">
                <input type="checkbox" id="korean_checkbox" name="korean_checkbox" value="Korean" onclick="toggleKorean();" checked>
                <label for="korean_checkbox">Korean</label>
            </div>
            <div class="col-3">
                <input type="checkbox" id="nepali_checkbox" name="nepali_checkbox" value="Nepali" onclick="toggleNepali();" checked>
                <label for="nepali_checkbox">Nepali</label>
            </div>
            <div class="col-3">
                <input type="checkbox" id="pashto_checkbox" name="pashto_checkbox" value="Pashto" onclick="togglePashto();" checked>
                <label for="pashto_checkbox">Pashto</label>
            </div>
        </div>

        <div class="container col-10 table-responsive">
            <table class="table table-bordered" id="translations_table" width="100%">
                <tbody>
                    <?php
                        require('connect-db.php');
                        global $db;

                        $query = "SELECT * FROM translations ORDER BY id DESC";

                        $get_terms = $db->prepare($query);
                        $get_terms->execute();
                        $terms = $get_terms->fetchAll();

                        function cmp($a, $b)
                        {
                            return strcasecmp($a["english"], $b["english"]);
                        }

                        usort($terms, "cmp");

                        if($get_terms->rowCount() == 0) {
                            echo "<tr><th class='name' scope='row'>No terms found</th></tr>";
                        }
                    ?>

                    <tr>
                        <td class="header" id="english_header">English</td>
                        <td class="header" id="spanish_header">Spanish</td>
                        <td class="header" id="arabic_header">Arabic</td>
                        <td class="header" id="farsidari_header">Farsi/Dari</td>
                        <td class="header" id="swahili_header">Swahili</td>
                        <td class="header" id="french_header">French</td>
                        <td class="header" id="chinese_header">Chinese</td>
                        <td class="header" id="korean_header">Korean</td>
                        <td class="header" id="nepali_header">Nepali</td>
                        <td class="header" id="pashto_header">Pashto</td>
                        <?php if(!(!isset($_SESSION['admin']) || !$_SESSION['admin'])): ?>
                            <td class="header" id="actions_header">Actions</td>
                        <?php endif; ?>
                    </tr>

                    <?php foreach ($terms as $term): ?>
                        <tr>
                            <?php if($term['english_path'] != NULL): ?>
                                <td class="english" onclick='tdclick(event, "english");' style="cursor: pointer" id=<?php echo "english-" . $term['id']; ?> >
                                    <?php echo $term['english']; ?>
                                    <audio id="<?php echo "english-audio-" . $term['id']; ?>" src="<?php echo $term['english_path'] ?>"></audio>
                                </td>
                            <?php else: ?>
                                <td class="english" id=<?php echo "english-" . $term['id']; ?> >
                                    <?php echo $term['english']; ?>
                                </td>
                            <?php endif; ?>

                            <?php if($term['spanish_path'] != NULL): ?>
                                <td class="translation" onclick='tdclick(event, "spanish");' style="cursor: pointer" id=<?php echo "spanish-" . $term['id']; ?> >
                                    <?php echo $term['spanish']; ?>
                                    <audio id="<?php echo "spanish-audio-" . $term['id']; ?>" src="<?php echo $term['spanish_path'] ?>"></audio>
                                </td>
                            <?php else: ?>
                                <td class="translation" id=<?php echo "spanish-" . $term['id']; ?> >
                                    <?php echo $term['spanish']; ?>
                                </td>
                            <?php endif; ?>
                            
                            <?php if($term['arabic_path'] != NULL): ?>
                                <td class="translation" onclick='tdclick(event, "arabic");' style="cursor: pointer" id=<?php echo "arabic-" . $term['id']; ?> >
                                    <?php echo $term['arabic']; ?>
                                    <audio id="<?php echo "arabic-audio-" . $term['id']; ?>" src="<?php echo $term['arabic_path'] ?>"></audio>
                                </td>
                            <?php else: ?>
                                <td class="translation" id=<?php echo "arabic-" . $term['id']; ?> >
                                    <?php echo $term['arabic']; ?>
                                </td>
                            <?php endif; ?>
                            
                            <?php if($term['farsi_dari_path'] != NULL): ?>
                                <td class="translation" onclick='tdclick(event, "farsi");' style="cursor: pointer" id=<?php echo "farsi-" . $term['id']; ?> >
                                    <?php echo $term['farsi_dari']; ?>
                                    <audio id="<?php echo "farsi-audio-" . $term['id']; ?>" src="<?php echo $term['farsi_dari_path'] ?>"></audio>
                                </td>
                            <?php else: ?>
                                <td class="translation" id=<?php echo "farsi-" . $term['id']; ?> >
                                    <?php echo $term['farsi_dari']; ?>
                                </td>
                            <?php endif; ?>
                            
                            <?php if($term['swahili_path'] != NULL): ?>
                                <td class="translation" onclick='tdclick(event, "swahili");' style="cursor: pointer" id=<?php echo "swahili-" . $term['id']; ?> >
                                    <?php echo $term['swahili']; ?>
                                    <audio id="<?php echo "swahili-audio-" . $term['id']; ?>" src="<?php echo $term['swahili_path'] ?>"></audio>
                                </td>
                            <?php else: ?>
                                <td class="translation" id=<?php echo "swahili-" . $term['id']; ?> >
                                    <?php echo $term['swahili']; ?>
                                </td>
                            <?php endif; ?>
                            
                            <?php if($term['french_path'] != NULL): ?>
                                <td class="translation" onclick='tdclick(event, "french");' style="cursor: pointer" id=<?php echo "french-" . $term['id']; ?> >
                                    <?php echo $term['french']; ?>
                                    <audio id="<?php echo "french-audio-" . $term['id']; ?>" src="<?php echo $term['french_path'] ?>"></audio>
                                </td>
                            <?php else: ?>
                                <td class="translation" id=<?php echo "french-" . $term['id']; ?> >
                                    <?php echo $term['french']; ?>
                                </td>
                            <?php endif; ?>
                            
                            <?php if($term['chinese_path'] != NULL): ?>
                                <td class="translation" onclick='tdclick(event, "chinese");' style="cursor: pointer" id=<?php echo "chinese-" . $term['id']; ?> >
                                    <?php echo $term['chinese']; ?>
                                    <audio id="<?php echo "chinese-audio-" . $term['id']; ?>" src="<?php echo $term['chinese_path'] ?>"></audio>
                                </td>
                            <?php else: ?>
                                <td class="translation" id=<?php echo "chinese-" . $term['id']; ?> >
                                    <?php echo $term['chinese']; ?>
                                </td>
                            <?php endif; ?>
                            
                            <?php if($term['korean_path'] != NULL): ?>
                                <td class="translation" onclick='tdclick(event, "korean");' style="cursor: pointer" id=<?php echo "korean-" . $term['id']; ?> >
                                    <?php echo $term['korean']; ?>
                                    <audio id="<?php echo "korean-audio-" . $term['id']; ?>" src="<?php echo $term['korean_path'] ?>"></audio>
                                </td>
                            <?php else: ?>
                                <td class="translation" id=<?php echo "korean-" . $term['id']; ?> >
                                    <?php echo $term['korean']; ?>
                                </td>
                            <?php endif; ?>
                            
                            <?php if($term['nepali_path'] != NULL): ?>
                                <td class="translation" onclick='tdclick(event, "nepali");' style="cursor: pointer" id=<?php echo "nepali-" . $term['id']; ?> >
                                    <?php echo $term['nepali']; ?>
                                    <audio id="<?php echo "nepali-audio-" . $term['id']; ?>" src="<?php echo $term['nepali_path'] ?>"></audio>
                                </td>
                            <?php else: ?>
                                <td class="translation" id=<?php echo "nepali-" . $term['id']; ?> >
                                    <?php echo $term['nepali']; ?>
                                </td>
                            <?php endif; ?>
                            
                            <?php if($term['pashto_path'] != NULL): ?>
                                <td class="translation" onclick='tdclick(event, "pashto");' style="cursor: pointer" id=<?php echo "pashto-" . $term['id']; ?> >
                                    <?php echo $term['pashto']; ?>
                                    <audio id="<?php echo "pashto-audio-" . $term['id']; ?>" src="<?php echo $term['pashto_path'] ?>"></audio>
                                </td>
                            <?php else: ?>
                                <td class="translation" id=<?php echo "pashto-" . $term['id']; ?> >
                                    <?php echo $term['pashto']; ?>
                                </td>
                            <?php endif; ?>
                            

                            <?php if(!(!isset($_SESSION['admin']) || !$_SESSION['admin'])): ?>
                                <td class="action" id=<?php echo "actions-" . $term['id']; ?> >
                                    <!-- Edit a translation row -->
                                    <form name="<?php echo "edit-entry-" . $term['id']; ?>" id="<?php echo "edit-entry-" . $term['id']; ?>" action="edit_entry.php" method="get" style="display:none">
                                        <input type="hidden" name="term_id" value="<?php echo $term['id'] ?>" />
                                    </form>
                                    <button type="submit" form="<?php echo "edit-entry-" . $term['id']; ?>" class="btn-action" value="Submit" onclick="javascript:getElementById(this.getAttribute('form')).submit();">
                                        <i class="fa fa-pencil" aria-hidden="true"></i>
                                    </button>

                                    <!-- Delete a translation row -->
                                    <form name="<?php echo "delete-entry-" . $term['id']; ?>" id="<?php echo "delete-entry-" . $term['id']; ?>" action="delete_entry.php" method="post" style="display:none">
                                        <input type="hidden" name="term_id" value="<?php echo $term['id'] ?>" />
                                    </form>
                                    <button type="submit" form="<?php echo "delete-entry-" . $term['id']; ?>" class="btn-action" value="Submit" onclick="return confirm('Are you sure you want to delete the translations for: <?php echo $term['english'] ?>?')" onclick="javascript:getElementById(this.getAttribute('form')).submit();">
                                        <i class="fa fa-trash" aria-hidden="true"></i>
                                    </button>
                                </td>
                            <?php endif; ?>
                        </tr>
                    <?php endforeach; ?>
                    
              </tbody>

            </table>

            <input type="hidden" id="filter_opened" value="false">


            <?php if(!(!isset($_SESSION['admin']) || !$_SESSION['admin'])): ?>
                <form name="add-entry" id="add-entry" action="add_entry.php" method="get">
                    <input type="submit" class="btn btn-dark col-2" id="submit" value="+ Add Entry" style="margin: 20px 40% 20px 40%; vertical-align: middle;">
                </form>
            <?php endif; ?>

        </div>
        <br/>
        <br/>

        <div class="modal" id="open_about">
          <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body" style="line-height: 1.3">
                    <button type="button" class="close" data-dismiss="modal" style="padding-bottom: 15px;">&times;</button>
                    <?php

                    $query = "SELECT * FROM about";

                        $get_about = $db->prepare($query);
                        $get_about->execute();
                        $about = $get_about->fetchAll();
                        $about_text;

                        foreach($about as $text) {
                            $about_text = $text[0];
                            break;
                        }

                    ?>

                    <?php if(!(!isset($_SESSION['admin']) || !$_SESSION['admin'])): ?>
                        <h3>Edit About</h3>
                        <form name="update-about" id="update-about" action="update_about.php" method="post">
                            <textarea class="form-control" name="about-text" id="about-text" style="height: 600px;"><?php echo $about_text ?> </textarea>
                        </form>
                        <button type="submit" form="update-about" class="btn-secondary" id="update-about-button" value="Submit" style="padding: 5px; margin: 10px 40% 5px 40%;" onclick="javascript:getElementById(this.getAttribute('form')).submit();">
                            Submit
                            <!-- <i class="fa fa-unlock" aria-hidden="true"></i> -->
                        </button>


                    <?php else: ?>


                        <?php echo "<style>p { margin-top: 0px; margin-bottom: 15px; } strong {font-weight: bold;}</style>" . htmlspecialchars_decode($about_text); ?>

                    <?php endif; ?>
                </div>
            </div>
          </div>
        </div>

    </body>

    <script>

    function preparePage() {
        CKEDITOR.replace('about-text');

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

    </script>
</html>
