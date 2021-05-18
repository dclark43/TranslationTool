<?php
if(!isset($_SESSION)) {
	session_start();
}

require('connect-db.php');

global $db;

if(!isset($_SESSION['admin']) || !$_SESSION['admin']) {
	header("Location: index.php");
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

        <title>Add Terms</title>
    </head>

    <body>
    	<nav class="navbar navbar-expand-md bg-dark navbar-dark" style="padding: 18px">
            <a class="navbar-brand py-0" href="index.php">Translation Tool</a> 
        </nav>

        <h3 class="title col-10"> Add terms </h1>

        <form name="create_term" action="create_term.php" method="post" enctype="multipart/form-data">
        	<div class="container col-10 ">
	        	<h3 style="display: inline-block; min-width: 20%">English: </h3>
	        	<input type="text" name="english_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 65%" />
				<input type="file" id="english_sound" name="english_sound" class="form-control" style="max-width: 20%; display: none" />
				<label for="english_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
	        	<br/>
	        	<br/>
	        	<h3 style="display: inline-block; min-width: 20%">Spanish: </h3>
	        	<input type="text" name="spanish_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 65%" />
	        	<input type="file" id="spanish_sound" name="spanish_sound" class="form-control" style="max-width: 20%; display: none" />
				<label for="spanish_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
	        	<br/>
	        	<br/>
	        	<h3 style="display: inline-block; min-width: 20%">Arabic: </h3>
	        	<input type="text" name="arabic_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 65%" />
	        	<input type="file" id="arabic_sound" name="arabic_sound" class="form-control" style="max-width: 20%; display: none" />
				<label for="arabic_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
	        	<br/>
	        	<br/>
	        	<h3 style="display: inline-block; min-width: 20%">Farsi/Dari: </h3>
	        	<input type="text" name="farsi_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 65%" />
	        	<input type="file" id="farsi_sound" name="farsi_sound" class="form-control" style="max-width: 20%; display: none" />
				<label for="farsi_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
	        	<br/>
	        	<br/>
	        	<h3 style="display: inline-block; min-width: 20%">Swahili: </h3>
	        	<input type="text" name="swahili_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 65%" />
	        	<input type="file" id="swahili_sound" name="swahili_sound" class="form-control" style="max-width: 20%; display: none" />
				<label for="swahili_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
	        	<br/>
	        	<br/>
	        	<h3 style="display: inline-block; min-width: 20%">French: </h3>
	        	<input type="text" name="french_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 65%" />
	        	<input type="file" id="french_sound" name="french_sound" class="form-control" style="max-width: 20%; display: none" />
				<label for="french_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
	        	<br/>
	        	<br/>
	        	<h3 style="display: inline-block; min-width: 20%">Chinese: </h3>
	        	<input type="text" name="chinese_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 65%" />
	        	<input type="file" id="chinese_sound" name="chinese_sound" class="form-control" style="max-width: 20%; display: none" />
				<label for="chinese_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
	        	<br/>
	        	<br/>
	        	<h3 style="display: inline-block; min-width: 20%">Korean: </h3>
	        	<input type="text" name="korean_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 65%" />
	        	<input type="file" id="korean_sound" name="korean_sound" class="form-control" style="max-width: 20%; display: none" />
				<label for="korean_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
	        	<br/>
	        	<br/>
	        	<h3 style="display: inline-block; min-width: 20%">Nepali: </h3>
	        	<input type="text" name="nepali_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 65%" />
	        	<input type="file" id="nepali_sound" name="nepali_sound" class="form-control" style="max-width: 20%; display: none" />
				<label for="nepali_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
	        	<br/>
	        	<br/>
	        	<h3 style="display: inline-block; min-width: 20%">Pashto: </h3>
	        	<input type="text" name="pashto_term" class="form-control" style="font-size: 16px; display: inline-block; max-width: 65%" />
	        	<input type="file" id="pashto_sound" name="pashto_sound" class="form-control" style="max-width: 20%; display: none" />
				<label for="pashto_sound" class="custom-file-upload" style="cursor: pointer; font-size: 25px; margin-left: 20px;">
					<i class="fa fa-volume-up" aria-hidden="true"></i>
				</label>
	        	<br/>
	        	<br/>
	        </div>
	        <input type="submit" class="btn btn-dark submit col-2" id="submit" value="Submit">
    		<a href="index.php" class="btn btn-light cancel col-2">Cancel</a>
        </form>

    </body>