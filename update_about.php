<?php
if(!isset($_SESSION)) {
	session_start();
}

require('connect-db.php');

global $db;

if(!isset($_SESSION['admin']) || !$_SESSION['admin']) {
	header("Location: index.php");
}


$query = "UPDATE about SET about_text=:about_text WHERE 1";

// echo $_POST['about-text'];

$update_about = $db->prepare($query);
$update_about->bindValue(':about_text', htmlspecialchars($_POST['about-text']));
$update_about->execute();

header("Location: index.php");

?>