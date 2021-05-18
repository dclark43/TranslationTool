<?php
if(!isset($_SESSION)) {
	session_start();
}

require('connect-db.php');

global $db;

// Find term by id and remove from database
$query = "DELETE FROM translations WHERE id=:term_id";

$get_term = $db->prepare($query);
$get_term->bindValue(':term_id', $_POST['term_id']);
$get_term->execute();

header("Location: index.php");

?>