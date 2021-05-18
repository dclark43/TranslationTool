<?php
if(!isset($_SESSION)) {
	session_start();
}

require('connect-db.php');

global $db;

if(!isset($_SESSION['admin']) || !$_SESSION['admin']) {
	header("Location: index.php");
}

// Get id of word being edited and update proper fields

foreach($_POST as $index => $value) {
	if($value == "") {
		$_POST[$index] = "No translation found";
	}
}

//TODO: put a check in here for already existing sound files to not be overwritten

$english_sound = NULL; $spanish_sound = NULL; $arabic_sound = NULL; $farsi_sound = NULL; $swahili_sound = NULL; $french_sound = NULL; $chinese_sound = NULL; $korean_sound = NULL; $nepali_sound = NULL; $pashto_sound = NULL;


$query = "SELECT * FROM translations WHERE id=:term_id";

$get_term = $db->prepare($query);
$get_term->bindValue(':term_id', $_POST['term_id']);
$get_term->execute();

$terms = $get_term->fetchAll();

foreach($terms as $term) {
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

if($_FILES['english_sound']['name'] != "") {
	$english_sound = "uploads/" . $_FILES['english_sound']['name'];
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


$query = "UPDATE translations SET english=:english_term, spanish=:spanish_term, arabic=:arabic_term, farsi_dari=:farsi_term, swahili=:swahili_term, french=:french_term, chinese=:chinese_term, korean=:korean_term, nepali=:nepali_term, pashto=:pashto_term, english_path=:english_sound, spanish_path=:spanish_sound, arabic_path=:arabic_sound, farsi_dari_path=:farsi_sound, swahili_path=:swahili_sound, french_path=:french_sound, chinese_path=:chinese_sound, korean_path=:korean_sound, nepali_path=:nepali_sound, pashto_path=:pashto_sound WHERE id=:term_id";

$update_term = $db->prepare($query);
$update_term->bindValue(':term_id', $_POST['term_id']);
$update_term->bindValue(':english_term', $_POST['english_term']);
$update_term->bindValue(':spanish_term', $_POST['spanish_term']);
$update_term->bindValue(':arabic_term', $_POST['arabic_term']);
$update_term->bindValue(':farsi_term', $_POST['farsi_term']);
$update_term->bindValue(':swahili_term', $_POST['swahili_term']);
$update_term->bindValue(':french_term', $_POST['french_term']);
$update_term->bindValue(':chinese_term', $_POST['chinese_term']);
$update_term->bindValue(':korean_term', $_POST['korean_term']);
$update_term->bindValue(':nepali_term', $_POST['nepali_term']);
$update_term->bindValue(':pashto_term', $_POST['pashto_term']);
$update_term->bindValue(':english_sound', $english_sound);
$update_term->bindValue(':spanish_sound', $spanish_sound);
$update_term->bindValue(':arabic_sound', $arabic_sound);
$update_term->bindValue(':farsi_sound', $farsi_sound);
$update_term->bindValue(':swahili_sound', $swahili_sound);
$update_term->bindValue(':french_sound', $french_sound);
$update_term->bindValue(':chinese_sound', $chinese_sound);
$update_term->bindValue(':korean_sound', $korean_sound);
$update_term->bindValue(':nepali_sound', $nepali_sound);
$update_term->bindValue(':pashto_sound', $pashto_sound);
$update_term->execute();

header("Location: index.php");

?>