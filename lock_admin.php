<?php
if(!isset($_SESSION)) {
	session_start();
}

$_SESSION['admin'] = false;

header("Location: index.php");

?>