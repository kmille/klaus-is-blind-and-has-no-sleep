<?php
include "flag.php";
//error_reporting(E_ALL);
//ini_set('display_errors', 1);

if(isset($_GET['src'])) {
    show_source(__FILE__);
    exit();
}
?>

<form method="post">
	<input type="text" placeholder="username" name="username"/>
	<input type="password" placeholder="password" name="password"/>
	<br>
	<input type="submit" vlaue="Submit"/><br>
</html>


<?php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

	if(!isset($_POST['username']) or !isset($_POST['password'])) {
		echo "username and password missing";
		exit();
	};

	$username = $_POST['username'];
	$password = $_POST['password'];

	$mysqli = new mysqli($db_host, $db_user, $db_pass, $db_name);
	$result = $mysqli->query("SELECT username, password FROM login where username = '$username'");
	$user = $result->fetch_assoc();

	if(sha1($password) === $user['password']) {
		echo "YAIL! $flag";
	} else {
		echo "WRONG!";
	}
}

?>
