<?php

if(!isset($_SESSION)) {
	session_start();
}

require('connect-db.php');

global $db;

if(!isset($_SESSION['admin']) || !$_SESSION['admin']) {
	header("Location: index.php");
}

foreach($_POST as $index => $value) {
	if($value == "") {
		$_POST[$index] = "No translation found";
	}
}

$english_sound = NULL; $spanish_sound = NULL; $arabic_sound = NULL; $farsi_sound = NULL; $swahili_sound = NULL; $french_sound = NULL; $chinese_sound = NULL; $korean_sound = NULL; $nepali_sound = NULL; $pashto_sound = NULL;

if($_FILES['english_sound']['name'] != "") {
	$english_sound = "uploads/" . $_FILES['english_sound']['name'];
	echo $_FILES['english_sound']['name'];
	move_uploaded_file($_FILES['english_sound']['tmp_name'], $english_sound);
}
if($_FILES['spanish_sound']['name'] != "") {
	$spanish_sound = "uploads/" . $_FILES['spanish_sound']['name'];
	move_uploaded_file($_FILES['spanish_sound']['tmp_name'], $spanish_sound);
}
if($_FILES['arabic_sound']['name'] != "") {
	$arabic_sound = "uploads/" . $_FILES['arabic_sound']['name'];
	move_uploaded_file($_FILES['arabic_sound']['tmp_name'], $arabic_sound);
}
if($_FILES['farsi_sound']['name'] != "") {
	$farsi_sound = "uploads/" . $_FILES['farsi_sound']['name'];
	move_uploaded_file($_FILES['farsi_sound']['tmp_name'], $farsi_sound);
}
if($_FILES['swahili_sound']['name'] != "") {
	$swahili_sound = "uploads/" . $_FILES['swahili_sound']['name'];
	move_uploaded_file($_FILES['swahili_sound']['tmp_name'], $swahili_sound);
}
if($_FILES['french_sound']['name'] != "") {
	$french_sound = "uploads/" . $_FILES['french_sound']['name'];
	move_uploaded_file($_FILES['french_sound']['tmp_name'], $french_sound);
}
if($_FILES['chinese_sound']['name'] != "") {
	$chinese_sound = "uploads/" . $_FILES['chinese_sound']['name'];
	move_uploaded_file($_FILES['pashto_sound']['tmp_name'], $pashto_sound);
}
if($_FILES['korean_sound']['name'] != "") {
	$korean_sound = "uploads/" . $_FILES['korean_sound']['name'];
	move_uploaded_file($_FILES['korean_sound']['tmp_name'], $korean_sound);
}
if($_FILES['nepali_sound']['name'] != "") {
	$nepali_sound = "uploads/" . $_FILES['nepali_sound']['name'];
	move_uploaded_file($_FILES['nepali_sound']['tmp_name'], $nepali_sound);
}
if($_FILES['pashto_sound']['name'] != "") {
	$pashto_sound = "uploads/" . $_FILES['pashto_sound']['name'];
	move_uploaded_file($_FILES['pashto_sound']['tmp_name'], $pashto_sound);
}

$query = "INSERT INTO translations (english, spanish, arabic, farsi_dari, swahili, french, chinese, korean, nepali, pashto, english_path, spanish_path, arabic_path, farsi_dari_path, swahili_path, french_path, chinese_path, korean_path, nepali_path, pashto_path) VALUES (:english, :spanish, :arabic, :farsi, :swahili, :french, :chinese, :korean, :nepali, :pashto, :english_sound, :spanish_sound, :arabic_sound, :farsi_sound, :swahili_sound, :french_sound, :chinese_sound, :korean_sound, :nepali_sound, :pashto_sound)";

$create_term = $db->prepare($query);
$create_term->bindValue(':english', $_POST['english_term']);
$create_term->bindValue(':spanish', $_POST['spanish_term']);
$create_term->bindValue(':arabic', $_POST['arabic_term']);
$create_term->bindValue(':farsi', $_POST['farsi_term']);
$create_term->bindValue(':swahili', $_POST['swahili_term']);
$create_term->bindValue(':french', $_POST['french_term']);
$create_term->bindValue(':chinese', $_POST['chinese_term']);
$create_term->bindValue(':korean', $_POST['korean_term']);
$create_term->bindValue(':nepali', $_POST['nepali_term']);
$create_term->bindValue(':pashto', $_POST['pashto_term']);
$create_term->bindValue(':english_sound', $english_sound);
$create_term->bindValue(':spanish_sound', $spanish_sound);
$create_term->bindValue(':arabic_sound', $arabic_sound);
$create_term->bindValue(':farsi_sound', $farsi_sound);
$create_term->bindValue(':swahili_sound', $swahili_sound);
$create_term->bindValue(':french_sound', $french_sound);
$create_term->bindValue(':chinese_sound', $chinese_sound);
$create_term->bindValue(':korean_sound', $korean_sound);
$create_term->bindValue(':nepali_sound', $nepali_sound);
$create_term->bindValue(':pashto_sound', $pashto_sound);
$create_term->execute();

$create_term->closeCursor();

header("Location: index.php");

?>