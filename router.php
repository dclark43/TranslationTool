<?php
switch (@parse_url($_SERVER['REQUEST_URI'])['path']) {
   case '/':                   // URL (without file name) to a default screen
      require 'index.php';
      break; 
   case '/index.php':     // if you plan to also allow a URL with the file name 
      require 'index.php';
      break;              
   case '/add_entry.php':
      require 'add_entry.php';
      break;
   case '/edit_entry.php':
      require 'edit_entry.php';
      break;
   case '/unlock_admin.php':
      require 'unlock_admin.php';
      break;
   case '/lock_admin.php':
      require 'lock_admin.php';
      break;
   case '/create_term.php':
      require 'create_term.php';
      break;
   case '/delete_entry.php':
      require 'delete_entry.php';
      break;
   case '/update_term.php':
      require 'update_term.php';
      break;
   case '/update_about.php':
      require 'update_about.php';
      break;
   default:
      http_response_code(404);
      exit('Not Found');
}  
?>