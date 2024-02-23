<?php

$servername = "localhost";
$username = "giftintern";
$password = "password";

// Create connection
$conn = mysql_connect($servername, $username, $password);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

mysql_select_db('prateekshya');

$str=mysql_query("select * from employ");

while($stp=mysql_fetch_array($str)) {
	$emp_id=$stp['emp_id'];
	$emp_name=$stp['emp_name'];
	$emp_gender=$stp['emp_gender'];
	$emp_dob=$stp['emp_dob'];
	$emp_email=$stp['emp_email'];
	$emp_mobile=$stp['emp_mobile'];

}

?>
