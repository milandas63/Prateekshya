<?php

$servername = "localhost";
$username = "giftintern";
$password = "password";

// Create connection
$conn = mysqli_connect($servername, $username, $password);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

mysqli_select_db($conn, "prateekshya");

$str=mysqli_query($conn, "select * from employ");

while($stp=mysqli_fetch_array($str)) {
	$emp_id=$stp['emp_id'];
	$emp_name=$stp['emp_name'];
	$emp_gender=$stp['emp_gender'];
	$emp_dob=$stp['emp_dob'];
	$emp_email=$stp['emp_email'];
	$emp_mobile=$stp['emp_mobile'];
	echo $emp_name . "<br>";
}

?>
