<?php
$servername = "localhost";
$username = "root";
$password = "";
$db = "hanoifc";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Create database
$sql = "
create table employee(
	e_id char(30) not null primary key,
  e_name char(50),
  nationality char(50),
	e_position char(30),
  salary char(50)
);
";
if ($conn->query($sql) === TRUE) {
  echo "employee table created successfully";
} else {
  echo "Error: " . $conn->error;
}

$conn->close();
?>
