<?php
// Connection variables
$host = "localhost";
$username = "root";
$password = "";
$dbname = "ef_saas";

// Create a connection
$conn = new mysqli($host, $username, $password, $dbname);

// Check for connection errors
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


?>
