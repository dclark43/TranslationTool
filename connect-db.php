<?php
// To find a hostname, access phpMyAdmin
// - select tob "User accounts"
// - locate the username you created, by default, the Host name is localhost
 
// To find a port number, access phpMyAdmin
// - use Console (bottom)
// - type     SHOW VARIABLES WHERE Variable_name = 'port';
// - execute the query    press Ctrl+Enter
// (default port to mySQL database in XAMPP is 3306)

//  Note: Looking in the wrong database and/or wrong table may results in either
//        cannot connect to the database, not find table, or no result set.
//        Thus, specify the correct database name

// hostname for google app engine
// $hostname = 'translationmachine:us-east4:translations-db';

//hostname for localhost
$hostname = 'localhost:3306';

// database name
$dbname = 'translations';

// database credentials for google app engine
// $username = 'root';
// $password = 'abc123';

// database credentials for localhost
$username = 'David';
$password = 'abc123';

// DSN (Data Source Name) specifies the host computer for the MySQL database 
// and the name of the database. If the MySQL database is running on the same server
// as PHP, use the localhost keyword to specify the host computer

// DSN for google app engine
// $dsn = "mysql:unix_socket=/cloudsql/$hostname;dbname=$dbname";


// DSN fo localhost
$dsn = "mysql:host=$hostname;dbname=$dbname";


// To connect to a MySQL database named web4640, need three arguments: 
// - specify a DSN, username, and password

// Create an instance of PDO (PHP Data Objects) which connects to a MySQL database
// (PDO defines an interface for accessing databases)
// Syntax: 
//    new PDO(dsn, username, password);


/** connect to the database **/
try 
{
//  $db = new PDO("mysql:host=$hostname;dbname=$dbname, $username, $password);
   $db = new PDO($dsn, $username, $password);
   
   // dispaly a message to let us know that we are connected to the database 
   // echo "<p>You are connected to the database</p>";
}
catch (PDOException $e)     // handle a PDO exception (errors thrown by the PDO library)
{
   // Call a method from any object, use the object's name followed by -> and then method's name
   // All exception objects provide a getMessage() method that returns the error message 
   $error_message = $e->getMessage();        
   echo "<p>An error occurred while connecting to the database: $error_message </p>";
}
catch (Exception $e)       // handle any type of exception
{
   $error_message = $e->getMessage();
   echo "<p>Error message: $error_message </p>";
}

?>
