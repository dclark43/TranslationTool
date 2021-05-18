<?php
if(!isset($_SESSION)) {
	session_start();
}

require('connect-db.php');

global $db;

if(!isset($_SESSION['admin']) || !$_SESSION['admin']) {
	header("Location: index.php");
}

// Get english word being edited and translations

$query = "SELECT * FROM translations WHERE id=:term_id";

// echo $_GET['term_id'];

$get_term = $db->prepare($query);
$get_term->bindValue(':term_id', $_GET['term_id']);
$get_term->execute();

$terms = $get_term->fetchAll();
$english_term; $spanish_term; $arabic_term; $farsi_term; $swahili_term; $french_term; $chinese_term; $korean_term; $nepali_term; $pashto_term;
$english_sound; $spanish_sound; $arabic_sound; $farsi_sound; $swahili_sound; $french_sound; $chinese_sound; $korean_sound; $nepali_sound; $pashto_sound;
foreach($terms as $term) {
	$english_term = $term[1];
	$spanish_term = $term[2];
	$arabic_term = $term[3];
	$farsi_term = $term[4];
	$swahili_term = $term[5];
	$french_term = $term[6];
	$chinese_term = $term[7];
	$korean_term = $term[8];
	$nepali_term = $term[9];
	$pashto_term = $term[10];
	$english_sound = $term[11];
	$spanish_sound = $term[12];
	$arabic_sound = $term[13];;
	$farsi_sound = $term[14];
	$swahili_sound = $term[15];
	$french_sound = $term[16];
	$chinese_sound = $term[17];
	$korean_sound = $term[18];
	$nepali_sound = $term[19];
	$pashto_sound = $term[20];
}

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

        <!-- <script src="js/translations.js"></script> -->

        <title>Edit Term</title>
    </head>

    <body>
    	<nav class="navbar navbar-expand-md bg-dark navbar-dark" style="padding: 18px">
            <a class="navbar-brand py-0" href="index.php">Translation Tool</a> 
        </nav>

        <h3 class="title col-10"> Edit translations for "<?php echo $english_term ?>" </h1>

        <form name="update_term" action="update_term.php" method="post" enctype="multipart/form-data">
        	<div class="container col-10 ">
	        	<h3 style="display: inline-block; min-width: 20%">English: </h3>
	        	<input type="text" name="english_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 55%" value="<?php echo $english_term ?>" />
				<input type="file" id="english_sound" name="english_sound" class="form-control" style="max-width: 10%; display: none" />
				<label for="english_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
				<?php if($english_sound != NULL): ?>
					<h5 id="english-audio-label" style="display: inline-block; max-width: 20%;"> <?php $array = explode('/', $english_sound); echo end($array); ?> </h5>
				<?php else: ?>
					<h5 id="english-audio-label" style="display: inline-block; max-width: 20%;"></h5>
				<?php endif; ?>
	        	<br/>
	        	<br/>

	        	<h3 style="display: inline-block; min-width: 20%">Spanish: </h3>
	        	<input type="text" name="spanish_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 55%" value="<?php echo $spanish_term ?>" />
	        	<input type="file" id="spanish_sound" name="spanish_sound" class="form-control" style="max-width: 20%; display: none" />
				<label for="spanish_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
				<?php if($spanish_sound != NULL): ?>
					<h5 id="spanish-audio-label" style="display: inline-block; max-width: 20%;"> <?php $array = explode('/', $spanish_sound); echo end($array); ?> </h5>
				<?php else: ?>
					<h5 id="spanish-audio-label" style="display: inline-block; max-width: 20%;"></h5>
				<?php endif; ?>
	        	<br/>
	        	<br/>

	        	<h3 style="display: inline-block; min-width: 20%">Arabic: </h3>
	        	<input type="text" name="arabic_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 55%" value="<?php echo $arabic_term ?>" />
	        	<input type="file" id="arabic_sound" name="arabic_sound" class="form-control" style="max-width: 20%; display: none" />
				<label for="arabic_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
				<?php if($arabic_sound != NULL): ?>
					<h5 id="arabic-audio-label" style="display: inline-block; max-width: 20%;"> <?php $array = explode('/', $arabic_sound); echo end($array); ?> </h5>
				<?php else: ?>
					<h5 id="arabic-audio-label" style="display: inline-block; max-width: 20%;"></h5>
				<?php endif; ?>
	        	<br/>
	        	<br/>

	        	<h3 style="display: inline-block; min-width: 20%">Farsi/Dari: </h3>
	        	<input type="text" name="farsi_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 55%" value="<?php echo $farsi_term ?>" />
	        	<input type="file" id="farsi_sound" name="farsi_sound" class="form-control" style="max-width: 20%; display: none" />
				<label for="farsi_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
				<?php if($farsi_sound != NULL): ?>
					<h5 id="farsi-audio-label" style="display: inline-block; max-width: 20%;"> <?php $array = explode('/', $farsi_sound); echo end($array); ?> </h5>
				<?php else: ?>
					<h5 id="farsi-audio-label" style="display: inline-block; max-width: 20%;"></h5>
				<?php endif; ?>
	        	<br/>
	        	<br/>

	        	<h3 style="display: inline-block; min-width: 20%">Swahili: </h3>
	        	<input type="text" name="swahili_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 55%" value="<?php echo $swahili_term ?>" />
	        	<input type="file" id="swahili_sound" name="swahili_sound" class="form-control" style="max-width: 20%; display: none" />
				<label for="swahili_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
				<?php if($swahili_sound != NULL): ?>
					<h5 id="swahili-audio-label" style="display: inline-block; max-width: 20%;"> <?php $array = explode('/', $swahili_sound); echo end($array); ?> </h5>
				<?php else: ?>
					<h5 id="swahili-audio-label" style="display: inline-block; max-width: 20%;"></h5>
				<?php endif; ?>
	        	<br/>
	        	<br/>

	        	<h3 style="display: inline-block; min-width: 20%">French: </h3>
	        	<input type="text" name="french_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 55%" value="<?php echo $french_term ?>" />
	        	<input type="file" id="french_sound" name="french_sound" class="form-control" style="max-width: 20%; display: none" />
				<label for="french_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
				<?php if($french_sound != NULL): ?>
					<h5 id="french-audio-label" style="display: inline-block; max-width: 20%;"> <?php $array = explode('/', $french_sound); echo end($array); ?> </h5>
				<?php else: ?>
					<h5 id="french-audio-label" style="display: inline-block; max-width: 20%;"></h5>
				<?php endif; ?>
	        	<br/>
	        	<br/>

	        	<h3 style="display: inline-block; min-width: 20%">Chinese: </h3>
	        	<input type="text" name="chinese_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 55%" value="<?php echo $chinese_term ?>" />
	        	<input type="file" id="chinese_sound" name="chinese_sound" class="form-control" style="max-width: 20%; display: none" />
				<label for="chinese_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
				<?php if($chinese_sound != NULL): ?>
					<h5 id="chinese-audio-label" style="display: inline-block; max-width: 20%;"> <?php $array = explode('/', $chinese_sound); echo end($array); ?> </h5>
				<?php else: ?>
					<h5 id="chinese-audio-label" style="display: inline-block; max-width: 20%;"></h5>
				<?php endif; ?>
	        	<br/>
	        	<br/>
	        	<h3 style="display: inline-block; min-width: 20%">Korean: </h3>
	        	<input type="text" name="korean_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 55%" value="<?php echo $korean_term ?>" />
	        	<input type="file" id="korean_sound" name="korean_sound" class="form-control" style="max-width: 20%; display: none" />
				<label for="korean_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
				<?php if($korean_sound != NULL): ?>
					<h5 id="korean-audio-label" style="display: inline-block; max-width: 20%;"> <?php $array = explode('/', $korean_sound); echo end($array); ?> </h5>
				<?php else: ?>
					<h5 id="korean-audio-label" style="display: inline-block; max-width: 20%;"></h5>
				<?php endif; ?>
	        	<br/>
	        	<br/>

	        	<h3 style="display: inline-block; min-width: 20%">Nepali: </h3>
	        	<input type="text" name="nepali_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 55%" value="<?php echo $nepali_term ?>" />
	        	<input type="file" id="nepali_sound" name="nepali_sound" class="form-control" style="max-width: 20%; display: none" />
				<label for="nepali_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
				<?php if($nepali_sound != NULL): ?>
					<h5 id="nepali-audio-label" style="display: inline-block; max-width: 20%;"> <?php $array = explode('/', $nepali_sound); echo end($array); ?> </h5>
				<?php else: ?>
					<h5 id="nepali-audio-label" style="display: inline-block; max-width: 20%;"></h5>
				<?php endif; ?>
	        	<br/>
	        	<br/>

	        	<h3 style="display: inline-block; min-width: 20%">Pashto: </h3>
	        	<input type="text" name="pashto_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 55%" value="<?php echo $pashto_term ?>" />
	        	<input type="file" id="pashto_sound" name="pashto_sound" class="form-control" style="max-width: 20%; display: none" />
				<label for="pashto_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
				<?php if($pashto_sound != NULL): ?>
					<h5 id="pashto-audio-label" style="display: inline-block; max-width: 20%;"> <?php $array = explode('/', $pashto_sound); echo end($array); ?> </h5>
				<?php else: ?>
					<h5 id="pashto-audio-label" style="display: inline-block; max-width: 20%;"></h5>
				<?php endif; ?>
	        	<br/>
	        	<br/>

	        </div>
	        <input type="hidden" id="term_id" name="term_id" value="<?php echo $_GET['term_id']; ?>">
	        <input type="submit" class="btn btn-dark submit col-2" id="submit" value="Submit">
    		<a href="index.php" class="btn btn-light cancel col-2">Cancel</a>
        </form>


		<script>

		$("#english_sound").on("change", function() {
		  var fileName = $(this).val().split("\\").pop();
		  var label = document.getElementById("english-audio-label");
		  label.innerHTML = fileName;
		});

		$("#spanish_sound").on("change", function() {
		  var fileName = $(this).val().split("\\").pop();
		  var label = document.getElementById("spanish-audio-label");
		  label.innerHTML = fileName;
		});

		$("#arabic_sound").on("change", function() {
		  var fileName = $(this).val().split("\\").pop();
		  var label = document.getElementById("arabic-audio-label");
		  label.innerHTML = fileName;
		});

		$("#farsi_sound").on("change", function() {
		  var fileName = $(this).val().split("\\").pop();
		  var label = document.getElementById("farsi-audio-label");
		  label.innerHTML = fileName;
		});

		$("#swahili_sound").on("change", function() {
		  var fileName = $(this).val().split("\\").pop();
		  var label = document.getElementById("swahili-audio-label");
		  label.innerHTML = fileName;
		});

		$("#french_sound").on("change", function() {
		  var fileName = $(this).val().split("\\").pop();
		  var label = document.getElementById("french-audio-label");
		  label.innerHTML = fileName;
		});

		$("#chinese_sound").on("change", function() {
		  var fileName = $(this).val().split("\\").pop();
		  var label = document.getElementById("chinese-audio-label");
		  label.innerHTML = fileName;
		});

		$("#korean_sound").on("change", function() {
		  var fileName = $(this).val().split("\\").pop();
		  var label = document.getElementById("korean-audio-label");
		  label.innerHTML = fileName;
		});

		$("#nepali_sound").on("change", function() {
		  var fileName = $(this).val().split("\\").pop();
		  var label = document.getElementById("nepali-audio-label");
		  label.innerHTML = fileName;
		});

		$("#pashto_sound").on("change", function() {
		  var fileName = $(this).val().split("\\").pop();
		  var label = document.getElementById("pashto-audio-label");
		  label.innerHTML = fileName;
		});

		</script>

    </body>