<?php

if(!isset($_SESSION)) {
	session_start();
}

require('connect-db.php');

global $db;

$query = "SELECT * FROM access_codes ORDER BY code DESC";

$get_codes = $db->prepare($query);
$get_codes->execute();
$codes = $get_codes->fetchAll();

if($get_codes->rowCount() == 0) {
    echo '<script>console.log("Error: No access codes found");</script>';
}
else {
	foreach($codes as $code) {
		if($code[0] == sha1($_POST['access-code'])) {
			$_SESSION['admin'] = true;
			$_SESSION['error_message'] = "";
		}
	}

	if(!$_SESSION['admin']) {
		$_SESSION['error_message'] = "Incorrect access code";
		// echo '<script>alert("Incorrect access code'. sha1($_POST['access-code']) . '");</script>';
	}
}

header("Location: index.php");

?>